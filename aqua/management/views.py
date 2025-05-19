from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from django.db import IntegrityError
from client.models import *
from vendor.models import *

def manage_home_1(request):
    return render(request, 'management/manage_home.html')


def management_register(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        phonenumber = request.POST['phonenumber']
        gender = request.POST['gender']
        address = request.POST['address']
        password = request.POST['password']
        try:
            managementregistration(name=name, email=email, password=password, phonenumber=phonenumber, gender=gender,
                                   address=address).save()
            return redirect('/management_login_1/')
        except IntegrityError as e:
            messages.info(request, "name already exists")
            return redirect('management_register/')
    return render(request, 'management/manage_register.html')


def management_login_1(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        print(password)
        print(email)
        try:
            managementregistration.objects.get(email=email, password=password)
            messages.info(request, "login successfully")
            return redirect('/manage1_home/')
        except:
            pass
    return render(request, 'management/manage_login.html')


def cli_details(request):
    datas = client_details.objects.filter(approve=False)
    return render(request, 'management/client_details_2.html', {'datas': datas})


def send_admin(request, id):
    datas = client_details.objects.get(id=id)
    datas.approve = True
    datas.save()
    print('hi')
    messages.info(request, "successfully sent")
    return redirect('/manage_client_details/')


def cli_require(request):
    datas = client_requirement_details.objects.filter(approve=False)
    return render(request, "management/client_requriement.html", {"datas": datas})

def send_Analysis(request, id):
    datas = client_requirement_details.objects.get(id=id)
    datas.approve = True
    datas.save()
    print('hi')
    messages.info(request, "successfully sent")
    return redirect('/manage_requirements/')


def vendor_detail(request):
    datas = vendordetails.objects.filter(approve=False)
    return render(request, "management/vendor_details.html", {"datas": datas})

def send_admin_2(request, id):
    datas = vendordetails.objects.get(id=id)
    datas.approve = True
    datas.save()
    print('hi')
    messages.info(request, "successfully sent")
    return redirect('/vendor_details22/')

