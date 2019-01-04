from django.db import models
from django.contrib.auth import get_user_model


class Event(models.Model):
    user_id = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)
    name = models.CharField(max_length=64)
    location = models.CharField(max_length=64)
    date = models.DateField()
    time = models.TimeField()
    imageurl = models.ImageField(upload_to='images/')
    description = models.TextField(max_length=250)
    musicgenres = models.CharField(max_length=20)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

