from django.urls import path
from django.contrib import admin

from . import views

urlpatterns = [

    path('vendor_home/', views.v_home),
    path('vendor_registration/', views.vendor_register),
    path('vendor_login_1/', views.vendor_login_1),
    path('vendor_details_1/', views.vendor_details),
    # path('food_details1/', views.food_details),
    path('Supply_details_1/',views.Supply_details)
]
