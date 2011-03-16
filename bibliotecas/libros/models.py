# -*- coding: utf-8 -*-

from django.db import models
from thumbs import ImageWithThumbsField
from lugar.models import *
from django.conf import settings
from bibliotecas.utils import get_file_path
from django.contrib.auth.models import User 



class Tematica(models.Model):
    ''' Tematicas de los distintos libros
    '''
    nombre = models.CharField(max_length=200)
    
    def __unicode__(self):
        return self.nombre
        
    class Meta:
        verbose_name_plural = "Tematicas"
        
class Editorial(models.Model):
    ''' Tematicas de los distintos libros
    '''
    nombre = models.CharField(max_length=200)
    
    def __unicode__(self):
        return self.nombre
        
    class Meta:
        verbose_name_plural = "Editoriales"
        
class TipoDocumento(models.Model):
    ''' Tematicas de los distintos libros
    '''
    nombre = models.CharField(max_length=200)
    
    def __unicode__(self):
        return self.nombre
        
    class Meta:
        verbose_name_plural = "Tipos de documentos"
        
class Organizacion(models.Model):
    ''' clase de las organizaciones que van
        a introducir sus libros y revistas
    '''
    nombre = models.CharField(max_length=200)
    telefono = models.IntegerField()
    fax = models.IntegerField(null=True, blank=True)
    celular = models.IntegerField(null=True, blank=True)
    direccion = models.TextField()
    correo_electronico = models.EmailField()
    departamento = models.ForeignKey(Departamento)
    logo = ImageWithThumbsField(upload_to=get_file_path, 
                                sizes=((150,150),(250,250)), null=True, blank=True)
    sitio_web = models.URLField(null=True, blank=True)

    fileDir = 'attachments/logos'
    
    def __unicode__(self):
        return self.nombre
        
    class Meta:
        verbose_name = "Organización"
        verbose_name_plural = "Organizaciones"

class Libro(models.Model):
    ''' clase que contendra los libros de las
        distintas organizaciones que utilicen
        esta app
    '''
    titulo = models.CharField(max_length=200)
    autor = models.CharField(max_length=200, null=True, blank=True)
    organizacion = models.ForeignKey(Organizacion)
    codigo = models.CharField(max_length=200, null=True, blank=True)
    edicion = models.CharField(max_length=200, null=True, blank=True)
    tematica = models.ForeignKey(Tematica)
    fecha_pub = models.DateField('Fecha de publicación')
    lugar_pub = models.CharField('Lugar de publición', max_length=200)
    editorial = models.ForeignKey(Editorial)
    pagina = models.IntegerField('Números de paginas', null=True, blank=True)
    isbn = models.CharField(max_length=200, null=True, blank=True)
    cantidad = models.IntegerField('cantidad en bodega', null=True, blank=True)
    descritores = models.TextField(null=True, blank=True)
    nota_descriptiva = models.TextField(null=True, blank=True)
    resumen = models.TextField(null=True, blank=True)
    portada = ImageWithThumbsField(upload_to=get_file_path, 
                                   sizes=((150,150),(250,250)), null=True, blank=True)
    tipo = models.ForeignKey(TipoDocumento)

    fileDir = 'attachments/portadas'
    
    usuario = models.ForeignKey(User)
    
    def __unicode__(self):
        return self.titulo
    
#    search = SearchManager(['titulo', 'autor', 'organizacion', 'edicion', 
#                            'tematica', 'editorial', 'descritores', 
#                            'nota_descriptiva', 'resumen'])
    
class Archivos(models.Model):
    nombre = models.CharField(max_length=200)
    archivo = models.FileField(upload_to=get_file_path, null=True, blank=True)
    libro = models.ForeignKey(Libro)

    fileDir = 'attachments/archivos'    
    
    def __unicode__(self):
        return self.nombre
        
    class Meta:
        verbose_name_plural = "Subir Archivos"
 
