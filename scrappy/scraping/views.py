from django.shortcuts import render
from django.http import HttpResponse, Http404, JsonResponse
from scraping.models import Job, Tech


def home_view(request, *args, **kwargs):
    last_twenty = Job.objects.all().order_by('-id')

    jobs = []

    for job in last_twenty:
        jobs.append(job.serialize())
    

    data = {
        'response': jobs
    }

    return JsonResponse(data, status = 200)

    
# Create your views here.
