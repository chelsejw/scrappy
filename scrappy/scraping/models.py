from django.db import models

# Create your models here.

class Tech(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['name']

class Job(models.Model):
    title = models.CharField(max_length=150)
    company = models.CharField(max_length=100, null=True, blank=True)
    link = models.CharField(max_length=250, unique=True)
    stack = models.ManyToManyField(Tech, null=True, blank=True)

    class Meta:
        ordering = ['title']

    

