from django.db import models
from django.db.models import fields
from rest_framework import serializers
from .models import Category, Book, Product

class CategorySerializer(serializers.ModelSerializer):

    class Meta:
        fields = (
            'id',
            'title'
        )
        model = Category

class BookSerializer(serializers.ModelSerializer):

    class Meta:
        fields = (
            'id',
            'title',
            'category',
            'isbn',
            'pages',
            'price',
            'stock',
            'description',
            'imageUrl',
            'status',
            'date_created'
        )
        model = Book

class ProductSerializer(serializers.ModelSerializer):

    class Meta:
        fields = (
            'id',
            'product_tag',
            'name',
            'category',
            'price',
            'stock',
            'imageUrl',
            'status',
            'date_created'
        )
        model = Product