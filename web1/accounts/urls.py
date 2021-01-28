from django.contrib.auth import views as auth_views
from django.urls import path
from . import views

urlpatterns = [
    # path('admin/', include('shop.urls')), #shop/urls.py 연결하기
    path('login/', auth_views.LoginView.as_view(), name="login"),
    path('logout/', auth_views.LogoutView.as_view(), name="logout"),
    path('signup/', views.signup, name='signup'),
]