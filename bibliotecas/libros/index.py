from djapian import space, Indexer, CompositeIndexer

from libros.models import *

try:
    space.add_index(Tematica, attach_as='indexer')
except:
    pass
    
class LibroIndexer(Indexer):
    fields = ['descritores','resumen','nota_descriptiva']
    tags = [
        ('titulo', 'titulo'),
        ('autor', 'autor'),
        ('codigo', 'edicion'),
        ('tematica', 'tematica'),
        ('editorial', 'editorial'),
        ('fecha_pub', 'fecha_pub')
    ]
try:
    space.add_index(Libro, LibroIndexer, attach_as='indexer')
except:
    pass
    
class OrganizacionIndexer(Indexer):
   tags = [
       ('nombre', 'nombre'),
   ]
try:
    space.add_index(Organizacion, OrganizacionIndexer, attach_as='indexer')
except:
    pass

complete_indexer = CompositeIndexer(Tematica.indexer, Libro.indexer, Organizacion.indexer)
