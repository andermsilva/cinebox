import 'package:json_annotation/json_annotation.dart';

part 'movie_item.g.dart';

@JsonSerializable()
class MovieItem {
  final int id;
  final String overview;
  final List<int> genreId;
  final String? posterPath;
  final String? backdropPath;
  final double voteAvarage;
  final String? releaseData;

  factory MovieItem.fromJson(Map<String, dynamic> json) =>
      _$MovieItemFromJson(json);

  MovieItem({
    required this.id,
    required this.overview,
    required this.genreId,
    this.posterPath,
    this.backdropPath,
    required this.voteAvarage,
    this.releaseData,
  });

  Map<String, dynamic> toJson() => _$MovieItemToJson(this);
}
