from django.contrib import admin
from libros.models import *
from lugar.models import *

class ArchivosInline(admin.TabularInline):
    model = Archivos
    extra = 1
    max_num = 6
    
class LibroAdmin(admin.ModelAdmin):
    def queryset(self, request):
        if request.user.is_superuser:
            return Libro.objects.all()
        return Libro.objects.filter(usuario=request.user)

    def get_form(self, request, obj=None, ** kwargs):
        if request.user.is_superuser:
            form = super(LibroAdmin, self).get_form(self, request, ** kwargs)
        else:
            form = super(LibroAdmin, self).get_form(self, request, ** kwargs)
            form.base_fields['usuario'].queryset = User.objects.filter(pk=request.user.pk)
        return form

    save_on_top = True
    actions_on_top = True
    inlines = [ArchivosInline]
    list_display = ('codigo','No_acceso', 'titulo', 'autor', 'tematica')
    list_filter = ['editorial', 'tematica']
    search_fields = ['titulo', 'autor', 'editorial__nombre']
    #date_hierarchy = 'fecha_pub'
    
    class Media:
        js = ['../files/js/tiny_mce/tiny_mce.js',
              '../files/js/editores/textareas.js',]
    
admin.site.register(Libro, LibroAdmin)
admin.site.register(Tematica)
admin.site.register(Editorial)
admin.site.register(TipoDocumento)
admin.site.register(Organizacion)
admin.site.register(Disponibilidad)
admin.site.register(Ideoma)
