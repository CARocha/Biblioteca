from django.conf.urls.defaults import *
from django.contrib.auth.views import password_change
from django.contrib.auth.views import password_change_done
from django.contrib.auth.views import password_reset
from django.contrib.auth.views import password_reset_done
from django.views.generic.simple import direct_to_template
import settings
from os import path as os_path

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    (r'^admin/', include(admin.site.urls)),
    (r'^$', 'libros.views.index'),
    (r'^libros/', include('libros.urls')),
    #(r'^busqueda/', include('haystack.urls')),
    (r'^accounts/login/$', 'django.contrib.auth.views.login'),
    (r'^accounts/logout/$', 'libros.views.logout_page'),
    (r'^accounts/', include('registration.backends.default.urls')),
    url(r'^tagging_autocomplete/', include('tagging_autocomplete.urls')),
)

if settings.DEBUG:
    urlpatterns += patterns('',
                            (r'^files/(.*)$', 'django.views.static.serve',
                             {'document_root': os_path.join(settings.MEDIA_ROOT)}),
                           )
