from django.contrib import admin
from apps.pokemon.models import Pokemon, Stat

# Register your models here.
admin.site.register(Pokemon)
admin.site.register(Stat)
