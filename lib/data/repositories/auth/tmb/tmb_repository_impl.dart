import 'dart:developer';

import 'package:cinebox/core/result/result.dart';
import 'package:cinebox/data/exceptions/data_exception.dart';
import 'package:cinebox/data/mappers/movie_mappers.dart';
import 'package:cinebox/data/service/tmdb/tmdb_service.dart';
import 'package:cinebox/domain/models/movie.dart';
import 'package:dio/dio.dart';

import './tmb_repository.dart';

class TmbRepositoryImpl implements TmbRepository {
  final TmdbService _tmdbService;

  TmbRepositoryImpl({required tmdbService}) : _tmdbService = tmdbService;

  @override
  Future<Result<List<Movie>>> getPopularMovies({
    String language = 'pt-BR',
    int page = 1,
  }) async {
    try {
      final moviesData = await _tmdbService.getPopularMovies(
        language: language,
        page: page,
      );
      return Success(
        MovieMappers.mapToMovies(moviesData),
      );
    } on DioException catch (e, s) {
      log('Erro ao buscar getPopularMovies', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar os filmes populares'),
      );
    }
  }

  @override
  Future<Result<List<Movie>>> getNowPlayingMovies({
    required String language,
    required int page,
  }) async {
    try {
      final moviesData = await _tmdbService.getNowPlayMovies(
        language: language,
        page: page,
      );
      return Success(
        MovieMappers.mapToMovies(moviesData),
      );
    } on DioException catch (e, s) {
      log('Erro ao buscar getPopularMovies', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar os filmes populares'),
      );
    }
  }

  @override
  Future<Result<List<Movie>>> getTopRatedMovies({
    required String language,
    required int page,
  }) async {
    try {
      final moviesData = await _tmdbService.getTopRatedMovies(
        language: language,
        page: page,
      );
      return Success(
        MovieMappers.mapToMovies(moviesData),
      );
    } on DioException catch (e, s) {
      log('Erro ao buscar getPopularMovies', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar os filmes populares'),
      );
    }
  }

  @override
  Future<Result<List<Movie>>> getUpComingMovies({
    required String language,
    required int page,
  }) async {
    try {
      final moviesData = await _tmdbService.getUpComingMovies(
        language: language,
        page: page,
      );
      return Success(
        MovieMappers.mapToMovies(moviesData),
      );
    } on DioException catch (e, s) {
      log('Erro ao buscar getPopularMovies', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar os filmes populares'),
      );
    }
  }
}
