from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.contrib.auth import login, authenticate

from .forms import SignUpForm


def sign_up(request):
    form = SignUpForm()
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=raw_password)
            login(request, user)
            return HttpResponseRedirect('/')

    return render(request, 'registration/signup.html', {'form': form})

