from django.shortcuts import render
from django.http import HttpResponse, Http404, JsonResponse
from scraping.models import Job, Tech


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
