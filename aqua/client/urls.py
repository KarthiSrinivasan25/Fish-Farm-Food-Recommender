from django.urls import path
from django.contrib import admin

from . import views

urlpatterns = [

    path('client_home1_/', views.chome),
    path('client_register/', views.client_register),
    path('client_login_1/', views.client_login_1),
    path('client_details_1/', views.client_details_2),
    # path('client_require2/', views.client_requirements1),
    path('client_requirements_1/', views.client_requirements_2),
    path('client_suggestion/', views.client_suggestion)

]