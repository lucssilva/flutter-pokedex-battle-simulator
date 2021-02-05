import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/controllers/pokedata.controller.dart';
import 'package:pokedex/view/widgets/custombackground.widget.dart';
import 'package:pokedex/view/widgets/pokedata.widget.dart';

class PokeDataScreen extends StatelessWidget {
  final _controller = Modular.get<PokeDataController>();
  @override
  build(_) => CustomBackgroundWidget(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
            child: TextField(
              onChanged: _controller.searchPokelist,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search_rounded),
              ),
            ),
          ),
          Expanded(child: PokeDataWidget()),
        ]),
      );
}
