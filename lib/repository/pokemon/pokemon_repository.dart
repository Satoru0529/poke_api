import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon_book/core/string.dart';
import 'package:pokemon_book/model/pokemon.dart';

class PokemonRepository {
  static Future<AsyncValue<List<Pokemon>>> fetchPokemonList() async {
    final pokemonList = <Pokemon>[];

    for (var id = 1; id <= 151; id++) {
      final res =
          await http.get(Uri.parse('$pokeApiRoute/pokemon-species/$id'));

      if (res.statusCode == 200) {
        final result = jsonDecode(res.body);
        final names = result['names'];
        final jaName = names.firstWhere(
            (name) => name['language']['name'] == 'ja',
            orElse: () => null);

        String japaneseName = jaName['name'];

        var pokemon = Pokemon.fromJson(result);

        /// pokemonのnameをjapaneseNameに置き換える
        pokemon = pokemon.copyWith(name: japaneseName);

        pokemonList.add(pokemon);
      } else {
        throw Exception('Failed to Load Pokemon');
      }
    }
    return AsyncValue.data(pokemonList);
  }
}
