from django.conf.urls import url
from apps.pokemon.views import PokemonEvolutionChain

urlpatterns = [
    url(r'^pokemon-evolution-chain$', PokemonEvolutionChain.as_view(), name='PokemonEvolutionChain'),
]