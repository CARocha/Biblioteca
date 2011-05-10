# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'Ideoma'
        db.create_table('libros_ideoma', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nombre', self.gf('django.db.models.fields.CharField')(max_length=200)),
        ))
        db.send_create_signal('libros', ['Ideoma'])

        # Renaming column for 'Libro.idioma' to match new field type.
        db.rename_column('libros_libro', 'idioma', 'idioma_id')
        # Changing field 'Libro.idioma'
        db.alter_column('libros_libro', 'idioma_id', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['libros.Ideoma'], null=True))

        # Adding index on 'Libro', fields ['idioma']
        db.create_index('libros_libro', ['idioma_id'])


    def backwards(self, orm):
        
        # Removing index on 'Libro', fields ['idioma']
        db.delete_index('libros_libro', ['idioma_id'])

        # Deleting model 'Ideoma'
        db.delete_table('libros_ideoma')

        # Renaming column for 'Libro.idioma' to match new field type.
        db.rename_column('libros_libro', 'idioma_id', 'idioma')
        # Changing field 'Libro.idioma'
        db.alter_column('libros_libro', 'idioma', self.gf('django.db.models.fields.IntegerField')(default=1))


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
        'libros.ideoma': {
            'Meta': {'object_name': 'Ideoma'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nombre': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'libros.libro': {
            'Meta': {'object_name': 'Libro'},
            'No_acceso': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'autor': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
            'cantidad': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'codigo': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'descriptores': ('bibliotecas.tagging_autocomplete.models.TagAutocompleteField', [], {'default': "''", 'max_length': '255', 'blank': 'True'}),
            'disponibilidad': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': "orm['libros.Disponibilidad']", 'null': 'True', 'blank': 'True'}),
            'edicion': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'editorial': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Editorial']"}),
            'fecha_pub': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'idioma': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Ideoma']", 'null': 'True', 'blank': 'True'}),
            'isbn': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'lugar_pub': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'nota_descriptiva': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'organizacion': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['libros.Organizacion']"}),
            'pagina': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
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
