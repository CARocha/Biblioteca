# -*- coding: UTF-8 -*-
# Create your views here.

from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.template import RequestContext
from django.shortcuts import render_to_response, get_object_or_404
from models import *
from libros.forms import SearchForm
from django.contrib.auth import logout
from django.http import HttpResponseRedirect

from django import forms
from django.shortcuts import render_to_response
from django.db.models import Q

from libros.models import *
import re
from django.template.defaultfilters import slugify
from django.db.models import Count

def logout_page(request):
  logout(request)
  return HttpResponseRedirect('/')

def index(request):
    ''' Vista que devolvera muchas de las salidas
        de la pagina principal o inicio del sitio
    '''
    try:
        ultimos = Libro.objects.all().order_by('-id')[0]
    except:
        pass
    tabla = {}
    
    for i in Organizacion.objects.all():
        conteo = Libro.objects.filter(organizacion=i)
        organi = conteo.aggregate(organi=Count('titulo'))['organi']
        urls = i.logo
        tabla[urls] = {'organi':organi, 'urls':urls}
    
    return render_to_response('index.html', {'ultimos': ultimos, 'tabla':tabla},
                              context_instance=RequestContext(request))


def search(request):
    query = request.GET.get('q', '')
#    nada = ['.','@',',','','|','?','¬','"','$','%','&','(',')','=']
#    for i in nada:
#        query = query.replace("i","")
    query = query.replace(".","")
    query = query.replace("@","")
    query = query.replace(",","")
    if query:
        separacion = re.split('\W+', query)
        qsets = []
        for palabra in separacion:
            qsets.append((
            
                          Q(titulo__icontains=palabra) | 
                          Q(autor__icontains=palabra)  |
                          Q(nota_descriptiva__icontains=palabra)|
                          Q(descritores__icontains=palabra)|
                          Q(resumen__icontains=palabra)|
    		              Q(tipo__nombre__icontains=palabra)|
    		              Q(tematica__nombre__icontains=palabra)|
    		              Q(organizacion__nombre__icontains=palabra)
                          
                          ))
        qsets = [reduce(lambda x,y: x&y, qsets, Q())]
#        qdata = (
#    		Q(titulo__icontains=query)|
#    		Q(autor__icontains=query)|
#    		Q(nota_descriptiva__icontains=query)|
#    		Q(resumen__icontains=query)|
#    		Q(tipo__nombre__icontains=query)|
#    		Q(tematica__nombre__icontains=query)|
#    		Q(organizacion__nombre__icontains=query)
#    			)
        #qsets.append(qdata)
        q = reduce(lambda x,y: x|y, qsets, Q()) 
        results = Libro.objects.filter(q).distinct()
    else:
        results = []
    dicc = {"results": results, "query": query, "c": len(results)}
    return render_to_response("libros/search.html", dicc,
                               context_instance = RequestContext(request))


def ver_busqueda(request, id):
    '''Vista para ver un contacto especifico'''
    libros  = get_object_or_404(Libro, id=id)
    return render_to_response('libros/ver_libros.html', 
                              {'libros': libros},
                              context_instance = RequestContext(request))

