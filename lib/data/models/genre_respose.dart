import 'package:json_annotation/json_annotation.dart';

part 'genre_respose.g.dart';

@JsonSerializable()
class GenreRespose {
  final List<GenreItem> genres;
  GenreRespose({required this.genres});

  factory GenreRespose.fromJson(Map<String, dynamic> json) =>
      _$GenreResposeFromJson(json);

  Map<String, dynamic> toJson() => _$GenreResposeToJson(this);
}

@JsonSerializable()
class GenreItem {
  final int id;
  final String name;
  GenreItem({required this.id, required this.name});

  factory GenreItem.fromJson(Map<String, dynamic> json) =>
      _$GenreItemFromJson(json);

  Map<String, dynamic> toJson() => _$GenreItemToJson(this);
}
