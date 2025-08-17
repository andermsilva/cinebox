import 'package:cinebox/core/result/result.dart';
import 'package:cinebox/data/service/tmdb/tmdb_service.dart';
import 'package:cinebox/domain/models/movie.dart';

import './tmb_repository.dart';

class TmbRepositoryImpl implements TmbRepository {
  final TmdbService _tmdbService;

  TmbRepositoryImpl({required tmdbService}) : _tmdbService = tmdbService;

  @override
  Future<Result<List<Movie>>> getPopularMovies({
    String language = 'pt-BR',
    int page = 1,
  }) async {
    final moviesData = await _tmdbService.getPopularMovies(
      language: language,
      page: page,
    );
  }
}
