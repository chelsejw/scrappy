from django.db import models

# Create your models here.

class Tech(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['name']
    
    def list_all():
        qs = list(Tech.objects.all())
        names = []
        for obj in qs:
            names.append(obj.name)
        return names

class Job(models.Model):
    title = models.CharField(max_length=150)
    company = models.CharField(max_length=100, null=True, blank=True)
    link = models.CharField(max_length=1000, unique=True)
    stack = models.ManyToManyField(Tech, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        ordering = ['-created_at']

    def all_with_stack():
        return Job.objects.exclude(stack=None)

    def serialize(self):
        return {
            "id": self.id,
            "title": self.title,
            "company": self.company,
            "link": self.link,
            "stack": self.get_stack(),
            "created": self.created_at
        }

    def get_stack(self):
        stack = []
        for x in list(self.stack.all()):
            stack.append(x.name)
        return stack
