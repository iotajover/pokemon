from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from apps.pokemon.models import Pokemon


# This view responds to the pokemon-evolution-chain URL, the name of the pokemon must be stored in the database
# , otherwise you must first execute the command with the evolution chain to which the pokemon belongs.


class PokemonEvolutionChain(APIView):
    def get(self, request, format=None):
        pokemon_name = self.request.query_params.get('name', None)
        if pokemon_name:
            pokemon_queryset = Pokemon.objects.filter(name=pokemon_name)
            if len(pokemon_queryset) > 0:
                pokemon_instance = pokemon_queryset[0]
                evolution_list = []
                if pokemon_instance.envolve_from:
                    evolution_list = get_preevolution_pokemon(evolution_list, pokemon_instance.envolve_from)
                if pokemon_instance.envolve_to:
                    evolution_list = get_evolution_pokemon(evolution_list, pokemon_instance.envolve_to)
                data_response = {'id': pokemon_instance.id,
                                 'name': pokemon_instance.name,
                                 'height': pokemon_instance.height,
                                 'weight': pokemon_instance.weight,
                                 'stats': get_pokemon_base_stats(pokemon_instance.stats.all()),
                                 'evolutions': evolution_list}
                return Response(data_response, status=status.HTTP_200_OK)
            else:
                data_response = {'error': 'Pokemon not found'}
                return Response(data_response, status=status.HTTP_400_BAD_REQUEST)
        else:
            data_response = {'error': 'Invalid parameter'}
            return Response(data_response, status=status.HTTP_406_NOT_ACCEPTABLE)


# This method returns a list of categories from a QuerySet


def get_pokemon_base_stats(categories):
    category_list = []
    for category in categories:
        category_dict = {'name': category.name,
                         'base_stat': category.base_stat,
                         'effort': category.effort}
        category_list.append(category_dict)
    return category_list


# This method returns the list of evolutions of a pokemon, from the envolve_to field of the pokemon model


def get_evolution_pokemon(evolution_list, evolution):
    evolution_dict = {'id': evolution.id,
                      'name': evolution.name,
                      'evolution_type': 'Evolution'}
    evolution_list.append(evolution_dict)
    if evolution.envolve_to:
        get_evolution_pokemon(evolution_list, evolution.envolve_to)
    return evolution_list


# # This method returns the list of pre evolutions of a pokemon, from the envolve_from field of the pokemon model


def get_preevolution_pokemon(evolution_list, preevolution):
    preevolution_dict = {'id': preevolution.id,
                         'name': preevolution.name,
                         'evolution_type': 'Preevolution'}
    evolution_list.append(preevolution_dict)
    if preevolution.envolve_from:
        get_preevolution_pokemon(evolution_list, preevolution.envolve_from)
    return evolution_list
