import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_book/core/string.dart';
import 'package:pokemon_book/model/pokemon.dart';

final pokemonRepositoryProvider = Provider((ref) => PokemonRepository());

class PokemonRepository {
  PokemonRepository();

  Future<AsyncValue<List<Pokemon>>> fetchPokemonList() async {
    final dio = Dio();
    final pokemonList = <Pokemon>[];

    for (var id = 1; id <= 10; id++) {
      final res = await dio.get('$pokeApiRoute/pokemon-species/$id');

      if (res.statusCode == 200) {
        try {
          var pokemon = Pokemon.fromJson(res.data);

          /// pokemonのnameをjapaneseNameに置き換える
          final names = res.data['names'];
          final jaName = names.firstWhere(
              (name) => name['language']['name'] == 'ja',
              orElse: () => null);
          String japaneseName = jaName['name'];
          pokemon = pokemon.copyWith(name: japaneseName);

          pokemonList.add(pokemon);
        } catch (error) {
          throw Exception(error);
        }
      } else {
        throw Exception('Failed to Load Pokemon');
      }
    }
    return AsyncValue.data(pokemonList);
  }
}
