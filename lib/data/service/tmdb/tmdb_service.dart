import 'package:cinebox/data/models/genre_respose.dart';
import 'package:cinebox/data/models/movie_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'tmdb_service.g.dart';

@RestApi()
abstract class TmdbService {
  factory TmdbService(Dio dio, {String? baseUrl}) = _TmdbService;

  @GET('/genre/movies/list')
  Future<GenreRespose> getMoviesGenres({
    @Query('language') String language = 'pt-BR',
  });

  @GET('/movie/now_playing')
  Future<MovieResponse> getNowPlayMovies({
    @Query('language') String language = 'pt-BR',
    @Query('page') int page = 1,
  });

  @GET('/movie/popular')
  Future<MovieResponse> getPopularMovies({
    @Query('language') String language = 'pt-BR',
    @Query('page') int page = 1,
  });

  @GET('movie/top_rated')
  Future<MovieResponse> getTopRatedMovies({
    @Query('language') String language = 'pt-BR',
    @Query('page') int page = 1,
  });

  @GET('/movie/upcoming')
  Future<MovieResponse> getUpComingMovies({
    @Query('language') String language = 'pt-BR',
    @Query('page') int page = 1,
  });
}
