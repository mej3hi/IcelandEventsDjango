from django.forms import ModelForm, RadioSelect, DateField, DateInput, ChoiceField
from.models import Event


class EventForm(ModelForm):

    GENRES_CHOICES = (
        ('Other', 'Other'),
        ('Rock', 'Rock'),
        ('Pop', 'Pop'),
        ('Jazz', 'Jazz'),
    )

    date = DateField(input_formats=['%d/%m/%Y'], widget=DateInput(format='%d/%m/%Y'))
    musicgenres = ChoiceField(widget=RadioSelect, choices=GENRES_CHOICES, initial='Other')

    class Meta:
        model = Event
        fields = ['name', 'location', 'date', 'time', 'imageurl', 'description', 'musicgenres']
