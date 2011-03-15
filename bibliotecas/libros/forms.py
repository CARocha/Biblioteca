from django import forms
from django.shortcuts import render_to_response

from libros.models import *
#from libros.index import complete_indexer

#MODEL_MAP = {
#    'Organizacion': Organizacion,
#    'Editorial': Editorial,
#    'Libro': Libro
#}

#MODEL_CHOICES = [('', 'all')] + zip(MODEL_MAP.keys(), MODEL_MAP.keys())

class SearchForm(forms.Form):
    query = forms.CharField(required=True)
    #model = forms.ChoiceField(choices=MODEL_CHOICES, required=False)
