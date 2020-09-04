from django.shortcuts import render
from django.http import HttpResponse, Http404, JsonResponse
from .models import Tech, Job
from rest_framework import viewsets, permissions, generics
from rest_framework.pagination import PageNumberPagination
from rest_framework.views import APIView
from .serializers import JobSerializer, TechSerializer


class JobPagination(PageNumberPagination):
    page_size = 20
    page_size_query_param = 'page_size'
    last_page_strings = ('last',)

class JobViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows jobs to be viewed/edited.
    """
    serializer_class = JobSerializer
    pagination_class = JobPagination
    
    def get_queryset(self):
        company = self.request.query_params.get('company', None)
        stack = self.request.query_params.getlist('stack', None)
        sort = self.request.query_params.get('sort', None)
        print(f"Company = {company}")
        print(f"Stack = {stack}")
        print(f"Sort = {sort}")
        jobs = Job.objects.all()
        if company!=None and len(stack)==0: 
            jobs = jobs.filter(company=company)
        elif len(stack)>0 and company==None:
            jobs = jobs.filter(stack__in=stack)
        elif company!=None and len(stack)>0:
            jobs = jobs.filter(stack__in=stack, company=company)
        if sort:
            if sort=="date_asc": jobs = jobs.order_by('created_at')
        return jobs

class TechViewSet(viewsets.ModelViewSet):

    """
    API endpoint that allows jobs to be viewed/edited.
    """
    queryset = Tech.objects.all().order_by('-created_at')
    serializer_class = TechSerializer


def home_view(request, *args, **kwargs):

    print(request.GET.getlist('stack'))
    print(request.GET.getlist('sort'))

    print(args)
    qs = Job.all_with_stack();
    pagination_class = JobPagination
    jobs = []

    for job in qs:
        jobs.append(job.serialize())

    last_update = Job.last_added()

    data = {
        'response': {
            'jobs': jobs,
            'last_update': last_update
        }
    }

    return JsonResponse(data, status = 200)



def all_tech(request, *args, **kwargs):
    last_update = Tech.last_added()
    data = {
        'response': {
            'tech': Tech.list_all(),
            'last_update': last_update
        }
    }
    return JsonResponse(data, status=200)


    
# Create your views here.
