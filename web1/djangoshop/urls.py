from django.contrib import admin
from django.urls import path, include


urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('accounts.urls')),
    path('accounts/', include('allauth.urls')),
    path('', include('shop.urls')), #shop/urls.py 연결하기
    path('cart/', include('cart.urls')),
    # path('accounts/', include('django.contrib.auth.urls')),
]

