import 'package:cinebox/core/result/result.dart';
import 'package:cinebox/domain/models/movie.dart';

abstract interface class TmbRepository {
  Future<Result<List<Movie>>> getPopularMovies({
    required String? language,
    required int page,
  });

  Future<Result<List<Movie>>> getTopRatedMovies({
    required String language,
    required int page,
  });

  Future<Result<List<Movie>>> getNowPlayingMovies({
    required String language,
    required int page,
  });

  Future<Result<List<Movie>>> getUpComingMovies({
    required String language,
    required int page,
  });
}
