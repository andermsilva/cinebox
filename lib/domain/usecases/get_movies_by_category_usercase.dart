import 'package:cinebox/core/result/result.dart';
import 'package:cinebox/data/repositories/auth/tmb/tmb_repository.dart';
import 'package:cinebox/domain/models/movie.dart';
import 'package:cinebox/domain/models/movies_by_category.dart';

class GetMoviesByCategoryUsercase {
  final TmbRepository _tmdbRepository;

  GetMoviesByCategoryUsercase({required TmbRepository tmdbRepository})
    : _tmdbRepository = tmdbRepository;
  //corrigir codigo
  Future<Result<MoviesByCategory>> execute() async {
    final results = await Future.wait([
      _tmdbRepository.getPopularMovies(language: '', page: 1),
      _tmdbRepository.getNowPlayingMovies(language: '', page: 1),
      _tmdbRepository.getTopRatedMovies(language: '', page: 1),
      _tmdbRepository.getUpComingMovies(language: '', page: 1),
    ]);

    if (results case [
      Success<List<Movie>>(value: final popular),
      Success<List<Movie>>(value: final playNow),
      Success<List<Movie>>(value: final topRated),
      Success<List<Movie>>(value: final upComing),
    ]) {
      return Success(
        MoviesByCategory(
          popular: popular,
          nowPlaying: playNow,
          topRated: topRated,
          upcoming: upComing,
        ),
      );
    }
    return Failure(
      Exception('Erro ao buscar categorias de filmes'),
    );
  }
}
