from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from django.db import IntegrityError


def chome(request):
    return render(request, 'client/client_home.html')


# def client_registration(request):
#     return render(request, 'client/client_login.html')


def client_register(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        phonenumber = request.POST['phonenumber']
        gender = request.POST['gender']
        address = request.POST['address']
        password = request.POST['password']
        try:
            clientregistration(name=name, email=email, password=password, phonenumber=phonenumber, gender=gender,
                               address=address).save()

            return redirect('/client_login_1/')
        except IntegrityError as e:
            messages.info(request, "name already exists")
            return redirect('/client_register/')
    return render(request, 'client/client_register.html')


def client_login_1(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        print(password)
        print(email)
        try:
            clientregistration.objects.get(email=email, password=password)
            messages.info(request, "login successfully")
            return redirect('/client_home1_/')
        except:
            pass
    return render(request, 'client/client_login.html')


def client_details_2(request):
    if request.method == 'POST':
        print('1')
        name = request.POST['name']
        email = request.POST['email']
        phonenumber = request.POST['phonenumber']
        organisation_name = request.POST['organisation_name']
        designation = request.POST['designation']
        organisation_type = request.POST['organisation_type']
        state = request.POST['state']
        city = request.POST['city']
        country = request.POST['country']

        client_details(name=name, email=email, phonenumber=phonenumber, organisation_name=organisation_name,
                       designation=designation,
                       organisation_type=organisation_type, state=state, city=city, country=country).save()
        messages.info(request, "submitted successfully")
        return redirect('/client_home1_/')
    return render(request, 'client/client_details.html')


# def client_requirements1(request):
#     return render(request, 'client/client_requirements.html')


def client_requirements_2(request):
    if request.method == 'POST':
        print('1')
        name = request.POST['name']
        fish_variety = request.POST['fish_variety']
        fish_quantity = request.POST['fish_quantity']
        culture_operation_type = request.POST['culture_operation_type']
        input_type = request.POST['input_type']
        food_variety = request.POST['food_variety']

        client_requirement_details(name=name, fish_variety=fish_variety, fish_quantity=fish_quantity,
                                   culture_operation_type=culture_operation_type,
                                   input_type=input_type,
                                   food_variety=food_variety).save()
        messages.info(request, "submitted successfully")
        return redirect('/client_home1_/')
    return render(request, 'client/client_requirements.html')


def client_suggestion(request):
    datas = client_requirement_details.objects.filter(approve=True)
    return render(request, "client/suggestion.html", {"datas": datas})