import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/view/screens/pokedata.screen.dart';

class PokedexModule extends ChildModule {
  @override
  get binds => [];

  @override
  get routers => [
        ModularRouter('/', child: (_, args) => PokeDataScreen()),
      ];

  static Inject get to => Inject<PokedexModule>.of();
}
