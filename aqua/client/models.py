from django.db import models


class clientregistration(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField(unique=True)
    phonenumber = models.PositiveBigIntegerField(null=True)
    gender = models.CharField(max_length=200, null=True)
    address = models.CharField(max_length=200, null=True)
    password = models.CharField(max_length=200)

class client_details(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField(unique=True)
    phonenumber = models.PositiveBigIntegerField(null=True)
    organisation_name = models.CharField(max_length=200)
    designation = models.CharField(max_length=200)
    organisation_type = models.CharField(max_length=200)
    state = models.CharField(max_length=200)
    city = models.CharField(max_length=200)
    country = models.CharField(max_length=200)
    approve = models.BooleanField(default=False)

class client_requirement_details(models.Model):
    name = models.CharField(max_length=200)
    fish_variety = models.CharField(max_length=200)
    fish_quantity = models.PositiveBigIntegerField(null=True)
    culture_operation_type = models.CharField(max_length=200)
    input_type = models.CharField(max_length=200)
    food_variety = models.CharField(max_length=200)
    approve = models.BooleanField(default=False)
    final = models.CharField(max_length=200, null=True)
