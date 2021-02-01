import 'package:pokedex/models/pokemon.model.dart';
import 'package:pokedex/services/httpclient.service.dart';

class PokeRepository {
  const PokeRepository(this.client);
  final HTTPClientService client;

  static const String _ENDPOINT = 'pokemon';

  Future<List<Pokemon>> fecthPokemons() async {
    try {
      final Map<String, dynamic> json =
          await client.get('$_ENDPOINT?limit=${151}');
      final List<Pokemon> pokemons = [];
      json['results'].forEach((el) => pokemons.add(Pokemon.fromBasicJson(el)));

      return pokemons;
    } catch (e) {
      print(e);
      throw Exception(e);
      // return List<Pokemon>();
    }
  }

  Future<Pokemon> fecthPokemon(String name) async {
    try {
      final Map<String, dynamic> json = await client.get('$_ENDPOINT/$name');

      return Pokemon.fromFullJson(json);
    } catch (e) {
      print(e);
      throw Exception(e);
      // return List<Pokemon>();
    }
  }
}
