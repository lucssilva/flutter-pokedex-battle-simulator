import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokedex/controllers/pokedata.controller.dart';
import 'package:pokedex/models/pokemon.model.dart';

class PokeItemComponent extends StatelessWidget {
  PokeItemComponent(this.pokename);
  final String pokename;
  final _controller = Modular.get<PokeDataController>();
  @override
  build(_) => FutureBuilder<Pokemon>(
      future: _controller.getPokemonFromAPI(pokename),
      builder: (context, pokemon) => (pokemon.hasData)
          ? CachedNetworkImage(
              imageUrl: pokemon.data.imageUrl,
              placeholder: (context, url) => PokeItemLoadingListTile(),
              errorWidget: (context, url, error) => PokeItemErrorListTile(),
              imageBuilder: (context, imageProvider) => PokeItemListTile(
                  image: imageProvider, pokename: pokemon.data.name),
            )
          : (pokemon.hasError)
              ? PokeItemErrorListTile()
              : PokeItemLoadingListTile());
}

class PokeItemListTile extends StatelessWidget {
  const PokeItemListTile({
    @required this.image,
    @required this.pokename,
  });
  final ImageProvider<Object> image;
  final String pokename;

  @override
  build(_) => ListTile(
        leading: Image(image: image),
        title: Text(pokename),
        trailing: Row(
          children: [
            Icon(Icons.help_outline),
          ],
        ),
      );
}

class PokeItemErrorListTile extends StatelessWidget {
  @override
  build(_) =>
      ListTile(leading: Icon(Icons.help_outline), title: Text('?????????????'));
}

class PokeItemLoadingListTile extends StatelessWidget {
  @override
  build(_) => PokeItemErrorListTile();
  // ListTile(leading: CircularProgressIndicator(), title: Text('??????????'));
}
