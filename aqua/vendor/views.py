from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from django.db import IntegrityError


def v_home(request):
    return render(request, 'vendor/vendor_home.html')


def vendor_register(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        phonenumber = request.POST['phonenumber']
        gender = request.POST['gender']
        address = request.POST['address']
        password = request.POST['password']
        try:
            vendorregistration(name=name, email=email, password=password, phonenumber=phonenumber, gender=gender,
                               address=address).save()
            return redirect('/vendor_login_1/')
        except IntegrityError as e:
            messages.info(request, "name already exists")
            return redirect('/vendor_registration/')
    return render(request, 'vendor/vendor_register.html')


def vendor_login_1(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        print(password)
        print(email)
        try:
            vendorregistration.objects.get(email=email, password=password)
            messages.info(request, "login successfully")
            return redirect('/vendor_home/')
        except:
            pass
    return render(request, 'vendor/vendor_login.html')


# def food_details(request):
#     return render(request, 'vendor/food_details.html')

def vendor_details(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        phone = request.POST['phone']
        vendor_name = request.POST['vendor_name']
        vendor_address = request.POST['vendor_address']
        buisness_classification = request.POST['buisness_classification']
        city = request.POST['city']
        vendordetails(name=name, email=email, phone=phone, vendor_name=vendor_name, vendor_address=vendor_address,
                      buisness_classification=buisness_classification, city=city).save()
        messages.info(request, "submitted successfully")
        return redirect('/vendor_home/')
    return render(request, 'vendor/vendor_details.html')

def Supply_details(request):
    if request.method == 'POST':
        name = request.POST['name']
        designation = request.POST['designation']
        organisation_name = request.POST['organisation_name']
        buisness_classification = request.POST['buisness_classification']
        food_type = request.POST['food_type']
        food_variety = request.POST['food_variety']
        supply_from = request.POST['supply_from']
        supplydetails(name=name, designation=designation, organisation_name=organisation_name, buisness_classification=buisness_classification, food_type=food_type,
                      food_variety=food_variety, supply_from=supply_from).save()
        messages.info(request, "submitted successfully")
        return redirect('/vendor_home/')
    return render(request, 'vendor/food_details.html')