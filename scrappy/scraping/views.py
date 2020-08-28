from django.shortcuts import render
from django.http import HttpResponse, Http404, JsonResponse
from scraping.models import Job, Tech


def home_view(request, *args, **kwargs):
    qs = Job.all_with_stack();

    jobs = []

    for job in qs:
        jobs.append(job.serialize())

    data = {
        'response': jobs
    }

    return JsonResponse(data, status = 200)

    
# Create your views here.
