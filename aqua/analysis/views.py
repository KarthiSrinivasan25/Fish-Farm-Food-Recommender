from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from django.db import IntegrityError
from client.models import *
import numpy as np
import pandas as pd
from sklearn.preprocessing import LabelEncoder
# from sklearn.svm import SVC
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis

import warnings

warnings.filterwarnings('ignore')



def analysishome(request):
    return render(request, 'analysis/analysis_home.html')


def analysis_register(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        phonenumber = request.POST['phonenumber']
        gender = request.POST['gender']
        address = request.POST['address']
        password = request.POST['password']
        try:
            analysisregistration(name=name, email=email, password=password, phonenumber=phonenumber, gender=gender,
                                 address=address).save()
            return redirect('/analysis_login1/')
        except IntegrityError as e:
            messages.info(request, "name already exists")
            return redirect('/analysis_register_1/')
    return render(request, 'analysis/analysis_register.html')


def analysis_login_1(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        print(password)
        print(email)
        try:
            analysisregistration.objects.get(email=email, password=password)
            messages.info(request, "login successfully")
            return redirect('/analysis_home1_/')
        except:
            pass
    return render(request, 'analysis/analysis_login.html')

def cli_require_details(request):
    datas = client_requirement_details.objects.filter(approve=True)
    return render(request, "analysis/clientrequirements.html", {"datas": datas})

def analysis_output(request):
    datas = client_requirement_details.objects.filter(approve=True)
    return render(request, "analysis/analysis_OUTPUT.html", {"datas": datas})

def algo(datas,r):
    print(datas)
    data = pd.DataFrame(pd.read_excel("aqua.xlsx"))
    read_file = pd.read_excel("aqua.xlsx")
    read_file.to_csv("aqua.csv", header=True, index=False)
    data = pd.DataFrame(pd.read_csv("aqua.csv"))

    # data = pd.read_csv('test1.csv')
    data_x = data.iloc[:, :-1]
    data_y = data.iloc[:, -1]
    string_datas = [i for i in data_x.columns if data_x.dtypes[i] == np.object_]

    LabelEncoders = []
    for i in string_datas:
        newLabelEncoder = LabelEncoder()
        data_x[i] = newLabelEncoder.fit_transform(data_x[i])
        LabelEncoders.append(newLabelEncoder)
    ylabel_encoder = None
    if type(data_y.iloc[1]) == str:
        ylabel_encoder = LabelEncoder()
        data_y = ylabel_encoder.fit_transform(data_y)

    model = LinearDiscriminantAnalysis()
    model.fit(data_x, data_y)

    value = {data_x.columns[i]: datas[i] for i in range(len(datas))}
    l = 0
    for i in string_datas:
        z = LabelEncoders[l]
        value[i] = z.transform([value[i]])[0]
        l += 1
    value = [i for i in value.values()]
    predicted = model.predict([value])

    if ylabel_encoder:
        predicted = ylabel_encoder.inverse_transform(predicted)
    return predicted[0]

def get_input(request, id):
    get = client_requirement_details.objects.get(id=id)
    r = get.id
    inputvar = []
    get.save()

    a = get.fish_variety
    b = get.culture_operation_type
    c = get.input_type
    d = get.food_variety

    print(a)
    print(b)

    inputvar.append(a)
    inputvar.append(b)
    inputvar.append(c)
    inputvar.append(d)
    print('input:', inputvar)
    f = algo(inputvar, r)
    print('OUTPUT:', f)
    st = client_requirement_details.objects.filter(id=r).update(final=f)

    return redirect('/algo_output/')


def algo_ot1(request):
    datas = client_requirement_details.objects.filter(approve=True)
    return render(request, "analysis/algo_ot.html", {"datas": datas})