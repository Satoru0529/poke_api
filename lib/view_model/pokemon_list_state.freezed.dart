// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonListState {
  AsyncValue<List<Pokemon>> get pokemonListState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonListStateCopyWith<PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListStateCopyWith<$Res> {
  factory $PokemonListStateCopyWith(
          PokemonListState value, $Res Function(PokemonListState) then) =
      _$PokemonListStateCopyWithImpl<$Res, PokemonListState>;
  @useResult
  $Res call({AsyncValue<List<Pokemon>> pokemonListState});
}

/// @nodoc
class _$PokemonListStateCopyWithImpl<$Res, $Val extends PokemonListState>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonListState = null,
  }) {
    return _then(_value.copyWith(
      pokemonListState: null == pokemonListState
          ? _value.pokemonListState
          : pokemonListState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Pokemon>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListStateImplCopyWith<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  factory _$$PokemonListStateImplCopyWith(_$PokemonListStateImpl value,
          $Res Function(_$PokemonListStateImpl) then) =
      __$$PokemonListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Pokemon>> pokemonListState});
}

/// @nodoc
class __$$PokemonListStateImplCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res, _$PokemonListStateImpl>
    implements _$$PokemonListStateImplCopyWith<$Res> {
  __$$PokemonListStateImplCopyWithImpl(_$PokemonListStateImpl _value,
      $Res Function(_$PokemonListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonListState = null,
  }) {
    return _then(_$PokemonListStateImpl(
      pokemonListState: null == pokemonListState
          ? _value.pokemonListState
          : pokemonListState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Pokemon>>,
    ));
  }
}

/// @nodoc

class _$PokemonListStateImpl implements _PokemonListState {
  const _$PokemonListStateImpl({this.pokemonListState = const AsyncLoading()});

  @override
  @JsonKey()
  final AsyncValue<List<Pokemon>> pokemonListState;

  @override
  String toString() {
    return 'PokemonListState(pokemonListState: $pokemonListState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListStateImpl &&
            (identical(other.pokemonListState, pokemonListState) ||
                other.pokemonListState == pokemonListState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokemonListState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListStateImplCopyWith<_$PokemonListStateImpl> get copyWith =>
      __$$PokemonListStateImplCopyWithImpl<_$PokemonListStateImpl>(
          this, _$identity);
}

abstract class _PokemonListState implements PokemonListState {
  const factory _PokemonListState(
          {final AsyncValue<List<Pokemon>> pokemonListState}) =
      _$PokemonListStateImpl;

  @override
  AsyncValue<List<Pokemon>> get pokemonListState;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListStateImplCopyWith<_$PokemonListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
