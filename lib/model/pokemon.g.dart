// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      imageUrl: json['imageUrl'] as String? ?? "",
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'imageUrl': instance.imageUrl,
    };
