from django.shortcuts import render
from django.http import HttpResponse, Http404, JsonResponse
from scraping.models import Job, Tech
from rest_framework import viewsets
from rest_framework import permissions

from rest_framework.pagination import PageNumberPagination
from scraping.serializers import JobSerializer, TechSerializer


class JobPagination(PageNumberPagination):
    page_size = 20
    page_size_query_param = 'page_size'
    max_page_size = 100
    last_page_strings = ('last',)

class JobViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows jobs to be viewed/edited.
    """
    queryset = Job.objects.all().order_by('-created_at')
    serializer_class = JobSerializer
    pagination_class = JobPagination

class TechViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows jobs to be viewed/edited.
    """
    queryset = Tech.objects.all().order_by('-created_at')
    serializer_class = TechSerializer




def home_view(request, *args, **kwargs):

    print(args)
    qs = Job.all_with_stack();

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
