from django.conf.urls.defaults import *
from django.conf import settings
from models import *


urlpatterns = patterns('libros.views',
    (r'^$', 'index'),
    (r'^busqueda/$', 'search'),
    (r'^ver/(?P<id>\d+)/$', 'ver_busqueda'),

)
