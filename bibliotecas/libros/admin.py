from django.contrib import admin
from libros.models import *
from lugar.models import *

class ArchivosInline(admin.TabularInline):
    model = Archivos
    extra = 1
    max_num = 6
    
class LibroAdmin(admin.ModelAdmin):
    save_on_top = True
    actions_on_top = True
    inlines = [ArchivosInline]
    list_display = ('titulo', 'autor', 'editorial', 'cantidad', 'resumen')
    list_filter = ['editorial', 'tematica']
    search_fields = ['titulo', 'autor', 'editorial']
    date_hierarchy = 'fecha_pub'
    
admin.site.register(Libros, LibroAdmin)
admin.site.register(Tematica)
admin.site.register(Editorial)
admin.site.register(TipoDocumento)
admin.site.register(Organizacion)
