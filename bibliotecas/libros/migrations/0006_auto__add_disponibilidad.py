# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'Disponibilidad'
        db.create_table('libros_disponibilidad', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nombre', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
        ))
        db.send_create_signal('libros', ['Disponibilidad'])

        # Adding M2M table for field disponibilidad on 'Libro'
        db.create_table('libros_libro_disponibilidad', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('libro', models.ForeignKey(orm['libros.libro'], null=False)),
            ('disponibilidad', models.ForeignKey(orm['libros.disponibilidad'], null=False))
        ))
        db.create_unique('libros_libro_disponibilidad', ['libro_id', 'disponibilidad_id'])


    def backwards(self, orm):
        
        # Deleting model 'Disponibilidad'
        db.delete_table('libros_disponibilidad')

        # Removing M2M table for field disponibilidad on 'Libro'
        db.delete_table('libros_libro_disponibilidad')


    models = {
        'auth.group': {
            'Meta': {'object_name': 'Group'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
        },
        'auth.permission': {
            'Meta': {'ordering': "('content_type__app_label', 'content_type__model', 'codename')", 'unique_together': "(('content_type', 'codename'),)", 'object_name': 'Permission'},
            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        'auth.user': {
            'Meta': {'object_name': 'User'},
            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Group']", 'symmetrical': 'False', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'}),
            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
        },
        'contenttypes.contenttype': {
            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        'libros.archivos': {
            'Meta': {'object_name': 'Archivos'},
            'archivo': ('django.db.models.fields.files.FileField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'libro': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Libro']"}),
            'nombre': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'libros.disponibilidad': {
            'Meta': {'object_name': 'Disponibilidad'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nombre': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'})
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
            'descritores': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'disponibilidad': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['libros.Disponibilidad']", 'null': 'True', 'blank': 'True'}),
            'edicion': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'editorial': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Editorial']"}),
            'fecha_pub': ('django.db.models.fields.DateField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'isbn': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'lugar_pub': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
            'nota_descriptiva': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'organizacion': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Organizacion']"}),
            'pagina': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'portada': ('bibliotecas.libros.thumbs.ImageWithThumbsField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'publicar': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'resumen': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'tematica': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Tematica']"}),
            'tipo': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.TipoDocumento']"}),
            'titulo': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
            'usuario': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']"})
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
            'logo': ('bibliotecas.libros.thumbs.ImageWithThumbsField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'nombre': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'lugar.departamento': {
            'Meta': {'object_name': 'Departamento'},
            'extension': ('django.db.models.fields.DecimalField', [], {'null': 'True', 'max_digits': '10', 'decimal_places': '2'}),
            'id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'nombre': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '50', 'unique': 'True', 'null': 'True', 'db_index': 'True'})
        }
    }

    complete_apps = ['libros']
