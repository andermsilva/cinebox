// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecases_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getMoviesByCategoryUsercase)
const getMoviesByCategoryUsercaseProvider =
    GetMoviesByCategoryUsercaseProvider._();

final class GetMoviesByCategoryUsercaseProvider
    extends
        $FunctionalProvider<
          GetMoviesByCategoryUsercase,
          GetMoviesByCategoryUsercase,
          GetMoviesByCategoryUsercase
        >
    with $Provider<GetMoviesByCategoryUsercase> {
  const GetMoviesByCategoryUsercaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMoviesByCategoryUsercaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMoviesByCategoryUsercaseHash();

  @$internal
  @override
  $ProviderElement<GetMoviesByCategoryUsercase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetMoviesByCategoryUsercase create(Ref ref) {
    return getMoviesByCategoryUsercase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMoviesByCategoryUsercase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMoviesByCategoryUsercase>(value),
    );
  }
}

String _$getMoviesByCategoryUsercaseHash() =>
    r'9156a932f746e38213dd5d8bbc8b3dd07fa1cf00';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
