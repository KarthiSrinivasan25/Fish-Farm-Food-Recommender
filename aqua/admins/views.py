from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from client.models import *
from django.core.mail import send_mail
from vendor.models import *


def adminhome_1(request):
    return render(request, 'admin/admin_home.html')


def admin_login(request):
    if request.method == "POST":
        email = request.POST["email"]
        password = request.POST["password"]
        # print(email)
        if email == "admin@gmail.com" and password == "admin":
            # print(email)
            request.session['admin'] = "admin@gmail.com"
            messages.info(request, "login successfully")
            return render(request, 'admin/admin_home.html')
        elif email != "admin@gmail.com":
            messages.error(request, "Wrong Mail id")
            return render(request, 'admin/admin_login.html')
        elif password != "admin":
            messages.error(request, "wrong password")
            return render(request, 'admin/admin_login.html')
        else:
            return render(request, 'admin/admin_login.html')
    return render(request, 'admin/admin_login.html')


def ad_cli_details(request):
    datas = client_details.objects.filter(approve=True)
    return render(request, "admin/client_details3.html", {"datas": datas})


def approve_project(request, id):
    datas = client_details.objects.get(id=id)
    print(datas.email)
    # print(datas.refer)
    send_mail(
        'Subject here',
        'Congrats! ,  You  have been Approved ',
        'maheshraamsurya@gmail.com',
        [datas.email],
        fail_silently=False,
    )
    datas.approve = True

    datas.save()
    return redirect('/admin_home111/')


def reject_project(request, id):
    datas = client_details.objects.get(id=id)
    print(datas.email)
    # print(datas.refer)
    send_mail(
        'Subject here',
        'You have been Rejected by the organisation',
        'maheshraamsurya@gmail.com',
        [datas.email],
        fail_silently=False,
    )
    datas.approve = True
    datas.save()
    return redirect('/admin_home111/')


def ad_vendor_details(request):
    datas = vendordetails.objects.filter(approve=True)
    return render(request, "admin/vendor_detail.html", {"datas": datas})

def approve_vendor(request, id):
    datas = vendordetails.objects.get(id=id)
    print(datas.email)
    # print(datas.refer)
    send_mail(
        'Subject here',
        'Congrats! ,  You  have been Approved ',
        'maheshraamsurya@gmail.com',
        [datas.email],
        fail_silently=False,
    )
    datas.approve = True

    datas.save()
    return redirect('/admin_home111/')


def reject_vendor(request, id):
    datas = vendordetails.objects.get(id=id)
    print(datas.email)
    # print(datas.refer)
    send_mail(
        'Subject here',
        'You have been Rejected by the organisation',
        'maheshraamsurya@gmail.com',
        [datas.email],
        fail_silently=False,
    )
    datas.approve = True
    datas.save()
    return redirect('/admin_home111/')

def algo_pre(request):
    datas = client_requirement_details.objects.filter(approve=True)
    return render(request, "admin/food_ot.html", {"datas": datas})
