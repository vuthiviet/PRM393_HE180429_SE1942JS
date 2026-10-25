// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// SharedPreferences được khởi tạo trong main() và override trong ProviderScope.

@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = SharedPreferencesProvider._();

/// SharedPreferences được khởi tạo trong main() và override trong ProviderScope.

final class SharedPreferencesProvider extends $FunctionalProvider<
    SharedPreferences,
    SharedPreferences,
    SharedPreferences> with $Provider<SharedPreferences> {
  /// SharedPreferences được khởi tạo trong main() và override trong ProviderScope.
  SharedPreferencesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sharedPreferencesProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  @$internal
  @override
  $ProviderElement<SharedPreferences> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SharedPreferences create(Ref ref) {
    return sharedPreferences(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferences value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferences>(value),
    );
  }
}

String _$sharedPreferencesHash() => r'd4834316b4223e88021bb18d458f10f77e9b085e';

@ProviderFor(photoApiService)
final photoApiServiceProvider = PhotoApiServiceProvider._();

final class PhotoApiServiceProvider extends $FunctionalProvider<PhotoApiService,
    PhotoApiService, PhotoApiService> with $Provider<PhotoApiService> {
  PhotoApiServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'photoApiServiceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$photoApiServiceHash();

  @$internal
  @override
  $ProviderElement<PhotoApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PhotoApiService create(Ref ref) {
    return photoApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PhotoApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PhotoApiService>(value),
    );
  }
}

String _$photoApiServiceHash() => r'728f767b103800a753e4d7041fde85f8f8a9c3b9';

@ProviderFor(databaseHelper)
final databaseHelperProvider = DatabaseHelperProvider._();

final class DatabaseHelperProvider
    extends $FunctionalProvider<DatabaseHelper, DatabaseHelper, DatabaseHelper>
    with $Provider<DatabaseHelper> {
  DatabaseHelperProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'databaseHelperProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$databaseHelperHash();

  @$internal
  @override
  $ProviderElement<DatabaseHelper> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DatabaseHelper create(Ref ref) {
    return databaseHelper(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DatabaseHelper value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DatabaseHelper>(value),
    );
  }
}

String _$databaseHelperHash() => r'56231951807b413a0f538db07832460ed8f48d1d';

@ProviderFor(photoRepository)
final photoRepositoryProvider = PhotoRepositoryProvider._();

final class PhotoRepositoryProvider extends $FunctionalProvider<PhotoRepository,
    PhotoRepository, PhotoRepository> with $Provider<PhotoRepository> {
  PhotoRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'photoRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$photoRepositoryHash();

  @$internal
  @override
  $ProviderElement<PhotoRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PhotoRepository create(Ref ref) {
    return photoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PhotoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PhotoRepository>(value),
    );
  }
}

String _$photoRepositoryHash() => r'840e3e7e33829dbebbbe17181c07a0a0c5fddc92';
