# -*- coding: utf-8 -*-

from django.db import models
from thumbs import ImageWithThumbsField
from lugar.models import *
from django.conf import settings
from bibliotecas.utils import get_file_path
from django.contrib.auth.models import User
#Agregando los tags
from south.modelsinspector import add_introspection_rules
from bibliotecas.tagging.models import Tag
from bibliotecas.tagging_autocomplete.models import TagAutocompleteField
add_introspection_rules ([], ["^bibliotecas\.tagging_autocomplete\.models\.TagAutocompleteField"])



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
    logo = ImageWithThumbsField(upload_to=get_file_path, 
                                sizes=((56,68),(23,25)), null=True, blank=True)
    fileDir = 'attachments/tipodoc'
    
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
                                sizes=((53,53),(250,250)), null=True, blank=True)
    sitio_web = models.URLField(null=True, blank=True)

    fileDir = 'attachments/logos'
    
    def __unicode__(self):
        return self.nombre
        
    class Meta:
        verbose_name = "Organización"
        verbose_name_plural = "Organizaciones"
        
class Disponibilidad(models.Model):
    '''Modelo sobre la disponibilidad de los 
       documentos esta pueden ser en sala, cd
       etc.
    ''' 
    nombre = models.CharField(max_length=200, null=True, blank=True)
    
    def __unicode__(self):
        return self.nombre
        
CHOICE_IDIOMA=[(1,'Español'),(2,'Ingles'),(3,'Portugues')]

class Ideoma(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre

class Libro(models.Model):
    ''' clase que contendra los libros de las
        distintas organizaciones que utilicen
        esta app
    '''
    titulo = models.CharField(max_length=200)
    idioma = models.ForeignKey(Ideoma, verbose_name='Idioma del Documento', null=True, blank=True)
    autor = models.CharField(max_length=200)
    organizacion = models.ForeignKey(Organizacion)
    codigo = models.CharField(max_length=200, null=True, blank=True)
    No_acceso = models.CharField(max_length=200, null=True, blank=True)
    disponibilidad = models.ManyToManyField(Disponibilidad, null=True, blank=True)
    edicion = models.CharField(max_length=200, null=True, blank=True)
    tematica = models.ForeignKey(Tematica)
    fecha_pub = models.CharField('Fecha de publicación', max_length=200, null=True, blank=True)
    lugar_pub = models.CharField('Lugar de publición', max_length=200, null=True, blank=True)
    editorial = models.ForeignKey(Editorial)
    pagina = models.CharField('Números de paginas', max_length=200, null=True, blank=True)
    isbn = models.CharField(max_length=200, null=True, blank=True)
    cantidad = models.IntegerField('No. de copias', null=True, blank=True)
    #descritores = models.CharField(max_length=200, null=True, blank=True, help_text="Agregar los descriptores separados con espacio ejemplo: agua tierra agri")
    descriptores = TagAutocompleteField(help_text='SEPARAR LAS PALABRAS CON "," ')
    nota_descriptiva = models.CharField('Obsevaciones', max_length=200, null=True, blank=True)
    resumen = models.TextField(null=True, blank=True)
    portada = ImageWithThumbsField(verbose_name='Caratula', upload_to=get_file_path, 
                                   sizes=((126,163),(250,250),(48,62)), null=True, blank=True
                                   )
    tipo = models.ForeignKey(TipoDocumento, verbose_name="Tipo de materiales")
    publicar = models.BooleanField()

    fileDir = 'attachments/portadas'
    
    usuario = models.ForeignKey(User)
    
    def __unicode__(self):
        return self.titulo
    
    def adjuntos(self):
        adjuntos = Archivos.objects.filter(libro__id=self.id)
        return adjuntos    

class Archivos(models.Model):
    nombre = models.CharField(max_length=200)
    archivo = models.FileField(upload_to=get_file_path, null=True, blank=True)
    libro = models.ForeignKey(Libro)

    fileDir = 'attachments/archivos'    
    
    def __unicode__(self):
        return self.nombre
        
    class Meta:
        verbose_name_plural = "Subir Archivos"
 
