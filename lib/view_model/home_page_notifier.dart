import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_book/model/pokemon.dart';
import 'package:pokemon_book/repository/pokemon/pokemon_repository.dart';

final pokemonListProvider =
    StateNotifierProvider<PokemonListNotifier, AsyncValue<List<Pokemon>>>(
        (ref) {
  return PokemonListNotifier();
});

class PokemonListNotifier extends StateNotifier<AsyncValue<List<Pokemon>>> {
  PokemonListNotifier() : super(const AsyncValue.loading()) {
    fetchPokemonList();
  }

  Future<void> fetchPokemonList() async {
    final pokemonList = await PokemonRepository.fetchPokemonList();
    state = pokemonList;
  }
}
