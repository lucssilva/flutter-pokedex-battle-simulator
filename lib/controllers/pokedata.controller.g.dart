// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedata.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeDataController on _PokeDataControllerBase, Store {
  Computed<bool> _$pokerequestHasCompleteComputed;

  @override
  bool get pokerequestHasComplete => (_$pokerequestHasCompleteComputed ??=
          Computed<bool>(() => super.pokerequestHasComplete,
              name: '_PokeDataControllerBase.pokerequestHasComplete'))
      .value;

  final _$pokemonsAtom = Atom(name: '_PokeDataControllerBase.pokemons');

  @override
  ObservableFuture<List<Pokemon>> get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(ObservableFuture<List<Pokemon>> value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  final _$pokelistAtom = Atom(name: '_PokeDataControllerBase.pokelist');

  @override
  ObservableList<Pokemon> get pokelist {
    _$pokelistAtom.reportRead();
    return super.pokelist;
  }

  @override
  set pokelist(ObservableList<Pokemon> value) {
    _$pokelistAtom.reportWrite(value, super.pokelist, () {
      super.pokelist = value;
    });
  }

  final _$_PokeDataControllerBaseActionController =
      ActionController(name: '_PokeDataControllerBase');

  @override
  void getPokemonsFromAPI() {
    final _$actionInfo = _$_PokeDataControllerBaseActionController.startAction(
        name: '_PokeDataControllerBase.getPokemonsFromAPI');
    try {
      return super.getPokemonsFromAPI();
    } finally {
      _$_PokeDataControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPokelist(List<Pokemon> list) {
    final _$actionInfo = _$_PokeDataControllerBaseActionController.startAction(
        name: '_PokeDataControllerBase.setPokelist');
    try {
      return super.setPokelist(list);
    } finally {
      _$_PokeDataControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void searchPokelist(String value) {
    final _$actionInfo = _$_PokeDataControllerBaseActionController.startAction(
        name: '_PokeDataControllerBase.searchPokelist');
    try {
      return super.searchPokelist(value);
    } finally {
      _$_PokeDataControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons},
pokelist: ${pokelist},
pokerequestHasComplete: ${pokerequestHasComplete}
    ''';
  }
}
