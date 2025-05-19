from django.urls import path
from django.contrib import admin

from . import views

urlpatterns = [

    path('analysis_home1_/', views.analysishome),
    path('analysis_register_1/', views.analysis_register),
    path('analysis_login1/', views.analysis_login_1),
    path('client_requirement/', views.cli_require_details),
    path('analysis_output/', views.analysis_output),
    path('get_input/<int:id>/', views.get_input),
    path('algo_output/', views.algo_ot1),

]