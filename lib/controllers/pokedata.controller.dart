import 'package:mobx/mobx.dart';
import 'package:pokedex/api/pokedata.repository.dart';
import 'package:pokedex/models/pokemon.model.dart';

part 'pokedata.controller.g.dart';

class PokeDataController = _PokeDataControllerBase with _$PokeDataController;

abstract class _PokeDataControllerBase with Store {
  _PokeDataControllerBase(this.repo);
  final PokeRepository repo;

  @observable
  ObservableFuture<List<Pokemon>> pokemons;

  @action
  void getPokemonsFromAPI() => pokemons = repo.fecthPokemons().asObservable();
  Future<Pokemon> getPokemonFromAPI(String name) => repo.fecthPokemon(name);
}
