import 'package:pokedex/utils/helpers.dart';

class Pokemon {
  const Pokemon({this.name, this.imageUrl, this.types});
  final String name;
  final String imageUrl;
  final List<String> types;

  factory Pokemon.fromBasicJson(Map<String, dynamic> json) =>
      Pokemon(name: json['name']);
  factory Pokemon.fromFullJson(Map<String, dynamic> json) => Pokemon(
      name: Format.toUpperFirst(json['name']),
      imageUrl: json['sprites']['other']['official-artwork']['front_default'],
      types: _getPokemonTypesFromJson(json));

  static List<String> _getPokemonTypesFromJson(Map<String, dynamic> json) {
    final List<String> types = [];
    json['types'].forEach((el) => types.add(el['type']['name'].toString()));

    return types;
  }
}
