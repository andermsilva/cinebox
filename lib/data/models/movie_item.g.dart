// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieItem _$MovieItemFromJson(Map<String, dynamic> json) => MovieItem(
  id: (json['id'] as num).toInt(),
  overview: json['overview'] as String,
  genreId: (json['genre_id'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  posterPath: json['poster_path'] as String?,
  backdropPath: json['backdrop_path'] as String?,
  voteAvarage: (json['vote_avarage'] as num).toDouble(),
  releaseData: json['release_data'] as String?,
);

Map<String, dynamic> _$MovieItemToJson(MovieItem instance) => <String, dynamic>{
  'id': instance.id,
  'overview': instance.overview,
  'genre_id': instance.genreId,
  'poster_path': instance.posterPath,
  'backdrop_path': instance.backdropPath,
  'vote_avarage': instance.voteAvarage,
  'release_data': instance.releaseData,
};
