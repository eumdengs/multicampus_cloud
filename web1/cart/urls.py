from django.urls import path
from .views import *
from django.conf import settings
from django.conf.urls.static import static

app_name = 'cart'

urlpatterns = [
    path('', detail, name='detail'),
    path('add/<int:product_id>', add, name='product_add'),
    path('remove/<product_id>', remove, name='product_remove')
]