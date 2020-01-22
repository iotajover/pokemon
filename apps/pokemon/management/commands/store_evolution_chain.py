from django.core.management.base import BaseCommand
from apps.pokemon.models import Pokemon, Stat
import requests
import json
import logging
from pokemon.settings import EVOLUTION_CHAIN_ENDPOINT

logger = logging.getLogger(__name__)

# Command to get an store a pokemon's evolution chain


class Command(BaseCommand):
    help = 'Fetch and store evolution chain'

    # Add command execution parameter
    def add_arguments(self, parser):
        parser.add_argument('evolution_chain_id', type=int, help='Indicates the evolution chain identification')

    # Get and send to process the complete evolution chain of a pokemon
    def handle(self, *args, **kwargs):
        evolution_chain_id = kwargs['evolution_chain_id']
        evolution_chain_endpoint = EVOLUTION_CHAIN_ENDPOINT.replace('param', str(evolution_chain_id))
        headers = {'Accept': 'application/json'}
        try:
            evolution_chain_response = requests.get(evolution_chain_endpoint, headers=headers, timeout=15)
            if evolution_chain_response.status_code == requests.codes.ok:
                evolution_chain_json_response = json.loads(evolution_chain_response.text)
                self.get_evolution_chain(evolution_chain_json_response['chain'], None)
                print('Success stored evolution chain')
            else:
                print('Evolution chain not found')
        except requests.exceptions.Timeout:
            logger.error('Timeout request from evolution chain resource')
        except Exception as e:
            logger.error(str(e))

    # This method associates the following evolution of the current pokemon and validates
    # if there are more evolutions available
    def get_evolution_chain(self, json_evolution_chain, envolve_from):
        current_pokem_instance = self.get_pokemon_species(json_evolution_chain['species']['url'], envolve_from)
        if envolve_from and current_pokem_instance:
            envolve_from.envolve_to = current_pokem_instance
            envolve_from.save()
        if len(json_evolution_chain['evolves_to']) > 0:
            self.get_evolution_chain(json_evolution_chain['evolves_to'][0], current_pokem_instance)

    # This method associates the previous evolution of the current pokemon
    def get_pokemon_species(self, pokemon_species_endpoint, envolve_from):
        headers = {'Accept': 'application/json'}
        try:
            pokemon_species_response = requests.get(pokemon_species_endpoint, headers=headers, timeout=15)
            if pokemon_species_response.status_code == requests.codes.ok:
                pokemon_species_json_response = json.loads(pokemon_species_response.text)
                pokemon_instance = self.get_pokemon(pokemon_species_json_response['varieties'][0]['pokemon']['url'])
                if pokemon_instance:
                    pokemon_instance.envolve_from = envolve_from
                    pokemon_instance.save()
                return pokemon_instance
            else:
                logger.error('Wrong answer from pokemon species resource')
                return None
        except requests.exceptions.Timeout:
            logger.error('Timeout request from pokemon species resource')
            return None
        except Exception as e:
            logger.error(str(e))
            return None

    # This method creates a pokemon and associates the basic stats
    def get_pokemon(self, pokemon_endpoint):
        headers = {'Accept': 'application/json'}
        try:
            pokemon_response = requests.get(pokemon_endpoint, headers=headers, timeout=15)
            if pokemon_response.status_code == requests.codes.ok:
                pokemon_json_response = json.loads(pokemon_response.text)
                pokemon_queryset = Pokemon.objects.filter(id=pokemon_json_response['id'])
                if len(pokemon_queryset) == 0:
                    stats_list = self.get_stats(pokemon_json_response['stats'])
                    pokemon_instance = Pokemon.objects.create(id=pokemon_json_response['id'],
                                                              name=pokemon_json_response['name'],
                                                              height=pokemon_json_response['height'],
                                                              weight=pokemon_json_response['weight'])
                    for stat_index in range(len(stats_list)):
                        pokemon_instance.stats.add(stats_list[stat_index])
                    return pokemon_instance
                else:
                    pokemon_instance = Pokemon.objects.get(id=pokemon_json_response['id'])
                    return pokemon_instance
            else:
                logger.error('Wrong answer from pokemon resource')
                return None
        except requests.exceptions.Timeout:
            logger.error('Timeout request from pokemon resource')
            return None
        except Exception as e:
            logger.error(str(e))
            return None

    # This method creates the basic stats of a pokemon
    @staticmethod
    def get_stats(json_stats):
        stats_list = []
        for index_stat in range(len(json_stats)):
            stat_instance = Stat.objects.create(name=json_stats[index_stat]['stat']['name'],
                                                base_stat=json_stats[index_stat]['base_stat'],
                                                effort=json_stats[index_stat]['effort'])
            stats_list.append(stat_instance)
        return stats_list
