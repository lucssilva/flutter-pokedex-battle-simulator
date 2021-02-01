import 'package:flutter/material.dart';
import 'package:pokedex/view/widgets/custombackground.widget.dart';
import 'package:pokedex/view/widgets/pokedata.widget.dart';

class PokeDataScreen extends StatelessWidget {
  @override
  build(_) => Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
        body: CustomBackgroundWidget(
          child: Column(children: <Widget>[
            Expanded(child: PokeDataWidget()),
          ]),
        ),
      );
}
