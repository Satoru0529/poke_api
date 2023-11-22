import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/pokemon.dart';

part 'pokemon_list_state.freezed.dart';

@freezed
abstract class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    @Default(AsyncLoading()) AsyncValue<List<Pokemon>> pokemonListState,
  }) = _PokemonListState;
}
