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
  @observable
  ObservableList<Pokemon> pokelist = ObservableList<Pokemon>();

  @action
  void getPokemonsFromAPI() => pokemons = repo.fecthPokemons().asObservable();
  @action
  void setPokelist(List<Pokemon> list) => pokelist.addAll(list);
  @action
  void searchPokelist(String value) {
    pokelist.clear();
    pokelist.addAll(pokemons.value);
    pokelist.retainWhere((pokemon) =>
        pokemon.name.contains(value.toLowerCase()) || value.isEmpty);
  }

  Future<Pokemon> getPokemonFromAPI(String name) => repo.fecthPokemon(name);

  @computed
  bool get pokerequestHasComplete => pokemons.status == FutureStatus.fulfilled;
}
