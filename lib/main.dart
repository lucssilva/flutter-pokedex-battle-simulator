import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/api/pokedata.repository.dart';
import 'package:pokedex/controllers/pokedata.controller.dart';
import 'package:pokedex/routers/pokedex.module.dart';
import 'package:pokedex/services/httpclient.service.dart';
import 'package:pokedex/utils/constants.dart';

//  app_widget.dart
class AppWidget extends StatelessWidget {
  @override
  Widget build(_) => MaterialApp(
        initialRoute: '/',
        navigatorKey: Modular.navigatorKey,
        onGenerateRoute: Modular.generateRoute,
      );
}

// app_module.dart
class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PokeDataController(i.get<PokeRepository>())),
        Bind((i) => PokeRepository(i.get<HTTPClientService>())),
        Bind((i) => HTTPClientService(baseUrl: API)),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: PokedexModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}

void main() => runApp(ModularApp(module: AppModule()));
