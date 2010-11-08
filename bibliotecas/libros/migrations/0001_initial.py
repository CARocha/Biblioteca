# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'Tematica'
        db.create_table('libros_tematica', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nombre', self.gf('django.db.models.fields.CharField')(max_length=200)),
        ))
        db.send_create_signal('libros', ['Tematica'])

        # Adding model 'Editorial'
        db.create_table('libros_editorial', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nombre', self.gf('django.db.models.fields.CharField')(max_length=200)),
        ))
        db.send_create_signal('libros', ['Editorial'])

        # Adding model 'TipoDocumento'
        db.create_table('libros_tipodocumento', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nombre', self.gf('django.db.models.fields.CharField')(max_length=200)),
        ))
        db.send_create_signal('libros', ['TipoDocumento'])

        # Adding model 'Organizacion'
        db.create_table('libros_organizacion', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nombre', self.gf('django.db.models.fields.CharField')(max_length=200)),
            ('telefono', self.gf('django.db.models.fields.IntegerField')()),
            ('fax', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('celular', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('direccion', self.gf('django.db.models.fields.TextField')()),
            ('correo_electronico', self.gf('django.db.models.fields.EmailField')(max_length=75)),
            ('departamento', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['lugar.Departamento'])),
            ('logo', self.gf('bibliotecas.libros.thumbs.ImageWithThumbsField')(max_length=100, null=True, blank=True)),
            ('sitio_web', self.gf('django.db.models.fields.URLField')(max_length=200, null=True, blank=True)),
        ))
        db.send_create_signal('libros', ['Organizacion'])

        # Adding model 'Libro'
        db.create_table('libros_libro', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('titulo', self.gf('django.db.models.fields.CharField')(max_length=200)),
            ('autor', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('organizacion', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['libros.Organizacion'])),
            ('codigo', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('edicion', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('tematica', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['libros.Tematica'])),
            ('fecha_pub', self.gf('django.db.models.fields.DateField')()),
            ('lugar_pub', self.gf('django.db.models.fields.CharField')(max_length=200)),
            ('editorial', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['libros.Editorial'])),
            ('pagina', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('isbn', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('cantidad', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('descritores', self.gf('django.db.models.fields.TextField')(null=True, blank=True)),
            ('nota_descriptiva', self.gf('django.db.models.fields.TextField')(null=True, blank=True)),
            ('resumen', self.gf('django.db.models.fields.TextField')(null=True, blank=True)),
            ('portada', self.gf('bibliotecas.libros.thumbs.ImageWithThumbsField')(max_length=100, null=True, blank=True)),
            ('tipo', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['libros.TipoDocumento'])),
        ))
        db.send_create_signal('libros', ['Libro'])

        # Adding model 'Archivos'
        db.create_table('libros_archivos', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nombre', self.gf('django.db.models.fields.CharField')(max_length=200)),
            ('archivo', self.gf('django.db.models.fields.files.FileField')(max_length=100, null=True, blank=True)),
            ('libro', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['libros.Libro'])),
        ))
        db.send_create_signal('libros', ['Archivos'])


    def backwards(self, orm):
        
        # Deleting model 'Tematica'
        db.delete_table('libros_tematica')

        # Deleting model 'Editorial'
        db.delete_table('libros_editorial')

        # Deleting model 'TipoDocumento'
        db.delete_table('libros_tipodocumento')

        # Deleting model 'Organizacion'
        db.delete_table('libros_organizacion')

        # Deleting model 'Libro'
        db.delete_table('libros_libro')

        # Deleting model 'Archivos'
        db.delete_table('libros_archivos')


    models = {
        'libros.archivos': {
            'Meta': {'object_name': 'Archivos'},
            'archivo': ('django.db.models.fields.files.FileField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'libro': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Libro']"}),
            'nombre': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'libros.editorial': {
            'Meta': {'object_name': 'Editorial'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nombre': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'libros.libro': {
            'Meta': {'object_name': 'Libro'},
            'autor': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'cantidad': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'codigo': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'descritores': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'edicion': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'editorial': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Editorial']"}),
            'fecha_pub': ('django.db.models.fields.DateField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'isbn': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'lugar_pub': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
            'nota_descriptiva': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'organizacion': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Organizacion']"}),
            'pagina': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'portada': ('bibliotecas.libros.thumbs.ImageWithThumbsField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'resumen': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'tematica': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Tematica']"}),
            'tipo': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.TipoDocumento']"}),
            'titulo': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'libros.organizacion': {
            'Meta': {'object_name': 'Organizacion'},
            'celular': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'correo_electronico': ('django.db.models.fields.EmailField', [], {'max_length': '75'}),
            'departamento': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['lugar.Departamento']"}),
            'direccion': ('django.db.models.fields.TextField', [], {}),
            'fax': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'logo': ('bibliotecas.libros.thumbs.ImageWithThumbsField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'nombre': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
            'sitio_web': ('django.db.models.fields.URLField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'telefono': ('django.db.models.fields.IntegerField', [], {})
        },
        'libros.tematica': {
            'Meta': {'object_name': 'Tematica'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nombre': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'libros.tipodocumento': {
            'Meta': {'object_name': 'TipoDocumento'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nombre': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'lugar.departamento': {
            'Meta': {'object_name': 'Departamento'},
            'id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'nombre': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '50', 'unique': 'True', 'null': 'True', 'db_index': 'True'})
        }
    }

    complete_apps = ['libros']
