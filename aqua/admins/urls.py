from django.urls import path
from django.contrib import admin

from . import views

urlpatterns = [

    path('admin_home111/', views.adminhome_1),
    path('admin_login_1/', views.admin_login),
    path('admin_client_details/', views.ad_cli_details),
    path('approve_project/<int:id>/',views.approve_project),
    path('reject_project/<int:id>/', views.reject_project),
    path('admin_vendor_detail/', views.ad_vendor_details),
    path('approve_vendor/<int:id>/', views.approve_vendor),
    path('reject_vendor/<int:id>/', views.reject_vendor),
    path('algo_out/', views.algo_pre),

]