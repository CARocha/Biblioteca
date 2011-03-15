# Create your views here.

from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.template import RequestContext
from django.shortcuts import render_to_response, get_object_or_404
from models import *
from libros.forms import SearchForm

from django import forms
from django.shortcuts import render_to_response
from django.db.models import Q

from libros.models import *
#from libros.index import complete_indexer

#MODEL_MAP = {
#    'Organizacion': Organizacion,
#    'Editorial': Editorial,
#    'Libro': Libro
#}

#MODEL_CHOICES = [('', 'all')] + zip(MODEL_MAP.keys(), MODEL_MAP.keys())

#class SearchForm(forms.Form):
#    query = forms.CharField(required=True)
#    model = forms.ChoiceField(choices=MODEL_CHOICES, required=False)


def index(request):
    ''' Vista que devolvera muchas de las salidas
        de la pagina principal o inicio del sitio
    '''
    return render_to_response('index.html', 
                              context_instance=RequestContext(request))


def search(request):
    query = request.GET.get('q', '')
    query = query.replace(",","")
    if query:
        #qsets = []
        qdata = (
    		Q(titulo__icontains=query)|
    		Q(autor__icontains=query)|
    		Q(nota_descriptiva__icontains=query)|
    		Q(resumen__icontains=query)|
    		Q(tipo__nombre__icontains=query)|
    		Q(tematica__nombre__icontains=query)|
    		Q(organizacion__nombre__icontains=query)
    			)
        #qsets.append(qdata) 
        results = Libro.objects.filter(qdata).distinct()
    else:
        results = []
    dicc = {"results": results, "query": query, "c": len(results)}
    return render_to_response("index.html", dicc,
                               context_instance = RequestContext(request))


def ver_busqueda(request, id):
    '''Vista para ver un contacto especifico'''
    libros  = get_object_or_404(Libro, id=id)
    return render_to_response('libros/ver_libros.html', 
                              {'libros': libros},
                              context_instance = RequestContext(request))
#    results = []
#    if request.GET:
#        form = SearchForm(request.GET)
#        if form.is_valid():
#            query = form.cleaned_data['query']
#            results = indexer.search(query).prefetch()
#            paginator = Paginator(indexer.search(query).prefetch(), 5)
#            results = paginator.page(int(request.GET.get('page', 1)))
#    else:
#        form = SearchForm()
#   
#    return render_to_response('libros/search.html', {'results': results, 'form': form},
#                               context_instance=RequestContext(request))

