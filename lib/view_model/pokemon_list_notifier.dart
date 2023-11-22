import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/pokemon_repository.dart';
import 'pokemon_list_state.dart';

final pokemonRepositoryProvider = Provider((ref) => PokemonRepository());

final pokemonListProvider =
    StateNotifierProvider<PokemonListNotifier, PokemonListState>((ref) {
  return PokemonListNotifier(ref: ref);
});

class PokemonListNotifier extends StateNotifier<PokemonListState> {
  PokemonListNotifier({required Ref ref})
      : _ref = ref,
        super(const PokemonListState()) {
    fetchPokemonList();
  }

  final Ref _ref;

  Future<void> fetchPokemonList() async {
    final pokemonList =
        await _ref.read(pokemonRepositoryProvider).fetchPokemonList();
    state = pokemonList;
  }
}
