// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_respose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreRespose _$GenreResposeFromJson(Map<String, dynamic> json) => GenreRespose(
  genres: (json['genres'] as List<dynamic>)
      .map((e) => GenreItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GenreResposeToJson(GenreRespose instance) =>
    <String, dynamic>{'genres': instance.genres};

GenreItem _$GenreItemFromJson(Map<String, dynamic> json) =>
    GenreItem(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$GenreItemToJson(GenreItem instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
