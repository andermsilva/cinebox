import 'package:cinebox/data/repositories/auth/repositories_providers.dart';
import 'package:cinebox/domain/usecases/get_movies_by_category_usercase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecases_providers.g.dart';

@riverpod
GetMoviesByCategoryUsercase getMoviesByCategoryUsercase(Ref ref) {
  return GetMoviesByCategoryUsercase(
    tmdbRepository: ref.read(tmbRepositoryProvider),
  );
}
