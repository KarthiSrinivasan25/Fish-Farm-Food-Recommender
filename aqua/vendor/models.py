from django.db import models

class vendorregistration(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField(unique=True)
    phonenumber = models.PositiveBigIntegerField(null=True)
    gender = models.CharField(max_length=200, null=True)
    address = models.CharField(max_length=200, null=True)
    password = models.CharField(max_length=200)

class vendordetails(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField(unique=True)
    phone = models.PositiveBigIntegerField(null=True)
    vendor_name = models.CharField(max_length=200)
    vendor_address = models.CharField(max_length=200)
    buisness_classification = models.CharField(max_length=200)
    city = models.CharField(max_length=200)
    approve = models.BooleanField(default=False)

class supplydetails(models.Model):
    name = models.CharField(max_length=200)
    designation = models.CharField(max_length=200)
    organisation_name = models.CharField(max_length=200)
    buisness_classification = models.CharField(max_length=200)
    food_type = models.CharField(max_length=200)
    food_variety = models.CharField(max_length=200)
    supply_from = models.CharField(max_length=200)