import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/pokemon.dart';

class PokemonApiClient {
  PokemonApiClient();

  Future<AsyncValue<List<Pokemon>>> fetchPokemonList() async {
    final dio = Dio();
    final pokemonList = <Pokemon>[];

    for (var id = 1; id <= 10; id++) {
      // 同時に両方のAPIからデータを取得
      final responses = await Future.wait([
        dio.get('https://pokeapi.co/api/v2/pokemon/$id'),
        dio.get('https://pokeapi.co/api/v2/pokemon-species/$id')
      ]);

      final pokemonData = responses[0].data;
      final speciesData = responses[1].data;

      if (responses[0].statusCode == 200 && responses[1].statusCode == 200) {
        try {
          var pokemon = Pokemon.fromJson(pokemonData);

          /// pokemonのnameをjapaneseNameに置き換える
          final names = speciesData['names'];
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
