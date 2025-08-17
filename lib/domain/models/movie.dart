import 'package:flutter/widgets.dart';

class Movie {
  final int id;
  final String title;
  final String overview;
  final List<int> genreId;
  final String? postePath;
  final String? backdroPath;
  final double voteAverage;
  final String? releaseDate;
  final bool isFavorite;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.genreId,
    this.postePath,
    this.backdroPath,
    required this.voteAverage,
    this.releaseDate,
    this.isFavorite = false,
  });

  Movie copyWith({
    int? id,
    String? title,
    String? overview,
    List<int>? genreId,
    ValueGetter<String?>? postePath,
    ValueGetter<String?>? backdroPath,
    double? voteAverage,
    ValueGetter<String?>? releaseDate,
    bool? isFavorite,
  }) {
    return Movie(
      id: id ?? this.id,
      title: title ?? this.title,
      overview: overview ?? this.overview,
      genreId: genreId ?? this.genreId,
      postePath: postePath != null ? postePath() : this.postePath,
      backdroPath: backdroPath != null ? backdroPath() : this.backdroPath,
      voteAverage: voteAverage ?? this.voteAverage,
      releaseDate: releaseDate != null ? releaseDate() : this.releaseDate,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
