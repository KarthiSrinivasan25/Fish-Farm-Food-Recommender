from django.urls import path
from django.contrib import admin

from . import views

urlpatterns = [

    path('manage1_home/', views.manage_home_1),
    path('management_register/', views.management_register),
    path('management_login_1/', views.management_login_1),
    path('manage_client_details/', views.cli_details),
    path('send_admin/<int:id>/', views.send_admin),
    path('manage_requirements/', views.cli_require),
    path('send_analysis/<int:id>/', views.send_Analysis),
    path('vendor_details22/', views.vendor_detail),
    path('send_admin_2/<int:id>/', views.send_admin_2)
]
