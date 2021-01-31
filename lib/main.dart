import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/view/screens/pokelist.screen.dart';

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
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => PokeListScreen()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}

void main() => runApp(ModularApp(module: AppModule()));
