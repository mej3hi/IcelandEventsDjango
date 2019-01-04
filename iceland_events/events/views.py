from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect
from django.contrib.auth import get_user_model
from django.contrib.auth.decorators import login_required
from datetime import datetime

from .models import Event
from .forms import EventForm


def index(request):
    event_list = Event.objects.order_by('date')[:6]
    context = {'event_list': event_list}
    return render(request, 'events/index.html', context)


def calender(request):
    date = request.GET.get('day', '01/01/1980')
    date_convert = datetime.strptime(date, '%d/%m/%Y').strftime('%Y-%m-%d')
    event_list = Event.objects.filter(date=date_convert)
    context = {'event_list': event_list, 'calender_date': date}
    return render(request, 'events/index.html', context)


@login_required()
def create_event(request):
    user_id = get_object_or_404(get_user_model(), pk=request.user.id)
    form = EventForm()

    if request.method == 'POST':
        form = EventForm(request.POST, request.FILES)
        if form.is_valid():
            event = form.save(commit=False)
            event.user_id = user_id
            event.save()
            return HttpResponseRedirect('/my_event')

    return render(request, 'events/event_form.html', {'form': form})


@login_required()
def edit_event(request, event_id):
    event = get_object_or_404(Event, pk=event_id, user_id=request.user.id)
    form = EventForm(instance=event)

    if request.method == 'POST':
        form = EventForm(request.POST, request.FILES, instance=event)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/my_event')

    return render(request, 'events/event_form.html', {'form': form, 'form_img': event.imageurl, 'form_type': 'Edit Event'})


@login_required()
def my_event(request):
    user_event = Event.objects.filter(user_id=request.user.id)
    context = {'event_list': user_event}
    return render(request, 'events/my_event.html', context)


@login_required()
def delete_event(request, event_id):
    event = get_object_or_404(Event, pk=event_id, user_id=request.user.id)
    event.delete()
    return HttpResponseRedirect('/my_event')
