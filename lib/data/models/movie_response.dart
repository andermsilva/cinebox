import 'package:cinebox/data/models/movie_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse {
  final String title;
  final int page;
  final List<MovieItem> results;
  final int totalResults;
  final int totalpages;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  MovieResponse({
    required this.title,
    required this.page,
    required this.results,
    required this.totalResults,
    required this.totalpages,
  });

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}
