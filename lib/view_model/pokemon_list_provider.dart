import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/pokemon.dart';
import '../repository/pokemon_repository.dart';

final pokemonRepositoryProvider = Provider((ref) => PokemonRepository());

final pokemonListProvider =
    StateNotifierProvider<PokemonListNotifier, AsyncValue<List<Pokemon>>>(
        (ref) {
  return PokemonListNotifier(ref: ref);
});

class PokemonListNotifier extends StateNotifier<AsyncValue<List<Pokemon>>> {
  PokemonListNotifier({required Ref ref})
      : _ref = ref,
        super(const AsyncValue.loading()) {
    fetchPokemonList();
  }

  final Ref _ref;

  Future<void> fetchPokemonList() async {
    final pokemonList =
        await _ref.read(pokemonRepositoryProvider).fetchPokemonList();
    state = pokemonList;
  }
}
