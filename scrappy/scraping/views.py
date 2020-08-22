from django.shortcuts import render
from django.http import HttpResponse, Http404, JsonResponse
from scraping.models import Job, Tech


def home_view(request, *args, **kwargs):
    last_twenty = Job.objects.all().order_by('-id')
    print(last_twenty)

    print(last_twenty[0].stack.all())
    jobs = []
    for x in last_twenty:
        try:
            job = {"id": x.id, "title": x.title, "company": x.company, "link": x.link, "stack": x.get_stack()}
            jobs.append(job)
        except:
            continue

    data = {
        'response': jobs
    }

    return JsonResponse(data, status = 200)

    
# Create your views here.
