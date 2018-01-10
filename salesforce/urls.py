from django.views import generic
from django.urls import path

from . import models

urlpatterns = [
    path('', generic.ListView.as_view(model=models.User)),
]
