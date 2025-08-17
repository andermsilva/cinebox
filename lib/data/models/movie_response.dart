import 'package:cinebox/data/models/movie_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse {
  final int page;
  final List<MovieItem> result;
  final int totalResults;
  final int totalpages;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  MovieResponse({
    required this.page,
    required this.result,
    required this.totalResults,
    required this.totalpages,
  });

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}
