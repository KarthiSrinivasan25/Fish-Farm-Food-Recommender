from django.shortcuts import render, redirect
from .models import *


def ahome(request):
    return render(request, 'aquahome.html')

