import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokedex/controllers/pokedata.controller.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:pokedex/utils/helpers.dart';

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
                pokename: pokemon.data.name,
                image: imageProvider,
                types: pokemon.data.types,
              ),
            )
          : (pokemon.hasError)
              ? PokeItemErrorListTile()
              : PokeItemLoadingListTile());
}

class PokeItemListTile extends StatelessWidget {
  const PokeItemListTile({
    @required this.image,
    @required this.pokename,
    @required this.types,
  });
  final ImageProvider<Object> image;
  final String pokename;
  final List<String> types;

  @override
  build(_) => ListTile(
        leading: Image(image: image),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(pokename),
            Row(
              children: List.generate(
                types.length,
                (index) => UI.getIconType(types[index]),
              ),
            )
            /* ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: types.length,
              itemBuilder: (_, i) => UI.getIconType(types[i]),
            ) */
          ],
        ),
        // trailing: Icon(Icons.help_outline),
      );
}

class PokeItemErrorListTile extends StatelessWidget {
  @override
  build(_) => ListTile(
        leading: Icon(Icons.help_outline),
        trailing: Icon(Icons.help_outline),
        title: Text('???????????????????'),
      );
}

class PokeItemLoadingListTile extends StatelessWidget {
  @override
  build(_) => PokeItemErrorListTile();
  // ListTile(leading: CircularProgressIndicator(), title: Text('??????????'));
}
