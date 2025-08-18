// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(authRepository)
const authRepositoryProvider = AuthRepositoryProvider._();

final class AuthRepositoryProvider
    extends $FunctionalProvider<AuthRepository, AuthRepository, AuthRepository>
    with $Provider<AuthRepository> {
  const AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'd948369152c51a69ccd27ebef356a0611ffd7e1a';

@ProviderFor(tmbRepository)
const tmbRepositoryProvider = TmbRepositoryProvider._();

final class TmbRepositoryProvider
    extends $FunctionalProvider<TmbRepository, TmbRepository, TmbRepository>
    with $Provider<TmbRepository> {
  const TmbRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tmbRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tmbRepositoryHash();

  @$internal
  @override
  $ProviderElement<TmbRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TmbRepository create(Ref ref) {
    return tmbRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TmbRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TmbRepository>(value),
    );
  }
}

String _$tmbRepositoryHash() => r'f9345427a0890f1678225c3264a0d7436101b3fa';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
