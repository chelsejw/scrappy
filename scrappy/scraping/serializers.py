from scraping.models import Job, Tech
from rest_framework import serializers

class JobSerializer(serializers.HyperlinkedModelSerializer):
    stack = serializers.StringRelatedField(many=True)
    class Meta:
        model = Job
        fields = ['title', 'company', 'link', 'created_at', 'stack']

class TechSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Tech
        fields = ['name', 'created_at']

