// https://mobx.netlify.app/examples/hacker-news/
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/controllers/pokedata.controller.dart';
import 'package:pokedex/view/components/pokeitem.component.dart';

class PokeDataWidget extends StatelessWidget {
  final _controller = Modular.get<PokeDataController>();
  PokeDataWidget() {
    _controller.getPokemonsFromAPI();
  }
  @override
  build(_) => Observer(builder: (_) {
        switch (_controller.pokemons.status) {
          case FutureStatus.pending:
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Text('\nLoading pokemons...'),
                ]);

          case FutureStatus.rejected:
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Failed to load pokemons.',
                    style: TextStyle(color: Colors.red),
                  ),
                  TextButton(
                    child: Text(
                      'Try again',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: _controller.getPokemonsFromAPI,
                  ),
                ]);

          case FutureStatus.fulfilled:
          default:
            return ListView.builder(
                cacheExtent: 151,
                itemCount: _controller.pokemons.value.length,
                itemBuilder: (context, index) =>
                    PokeItemComponent(_controller.pokemons.value[index].name));
        }
      });
}
