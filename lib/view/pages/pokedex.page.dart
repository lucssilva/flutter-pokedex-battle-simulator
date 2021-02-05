import 'package:flutter/material.dart';
import 'package:pokedex/view/screens/pokedata.screen.dart';

class PokedexPage extends StatelessWidget {
  @override
  build(_) => Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
        body: PokeDataScreen(),
      );
}
