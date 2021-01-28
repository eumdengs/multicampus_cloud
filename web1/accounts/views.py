from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib import auth

def signup(request):
    # 포스트 방식으로 들어오면
    if request.method == 'POST':
        # 비밀번호 확인도 같다면
        if request.POST['password1'] ==request.POST['password2']:
            # 유저 만들기
            user = User.objects.create_user(username=request.POST['username'], password=request.POST['password1'])
            auth.login(request,user) #로그인
            return redirect('show')
    return render(request, 'registration/signup.html')
