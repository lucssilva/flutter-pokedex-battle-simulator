import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/view/pages/pokedex.page.dart';

class PokedexModule extends ChildModule {
  @override
  get binds => [];

  @override
  get routers => [
        ModularRouter('/', child: (_, args) => PokedexPage()),
      ];

  static Inject get to => Inject<PokedexModule>.of();
}
