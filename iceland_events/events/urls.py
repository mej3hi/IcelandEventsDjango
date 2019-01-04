from django.urls import path
from . import views

app_name = 'events'
urlpatterns = [
    path('', views.index, name='index'),
    path('calender', views.calender, name='calender'),
    path('create_event', views.create_event, name='create_event'),
    path('my_event', views.my_event, name='my_event'),
    path('edit_event/<int:event_id>', views.edit_event, name='edit_event'),
    path('delete_event/<int:event_id>', views.delete_event, name='delete_event'),

]