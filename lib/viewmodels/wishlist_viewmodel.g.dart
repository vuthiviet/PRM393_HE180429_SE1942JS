// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel cho WishList: đọc/ghi bảng Photo trong SQLite.

@ProviderFor(WishlistViewModel)
final wishlistViewModelProvider = WishlistViewModelProvider._();

/// ViewModel cho WishList: đọc/ghi bảng Photo trong SQLite.
final class WishlistViewModelProvider
    extends $AsyncNotifierProvider<WishlistViewModel, List<Photo>> {
  /// ViewModel cho WishList: đọc/ghi bảng Photo trong SQLite.
  WishlistViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'wishlistViewModelProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$wishlistViewModelHash();

  @$internal
  @override
  WishlistViewModel create() => WishlistViewModel();
}

String _$wishlistViewModelHash() => r'3c2ad8b7d97532ae94f169fbcae3bc9df4b15bf4';

/// ViewModel cho WishList: đọc/ghi bảng Photo trong SQLite.

abstract class _$WishlistViewModel extends $AsyncNotifier<List<Photo>> {
  FutureOr<List<Photo>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Photo>>, List<Photo>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Photo>>, List<Photo>>,
        AsyncValue<List<Photo>>,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}

/// Tập id các Photo đang được quan tâm (để tô trái tim trên danh sách API).

@ProviderFor(favoriteIds)
final favoriteIdsProvider = FavoriteIdsProvider._();

/// Tập id các Photo đang được quan tâm (để tô trái tim trên danh sách API).

final class FavoriteIdsProvider
    extends $FunctionalProvider<Set<int>, Set<int>, Set<int>>
    with $Provider<Set<int>> {
  /// Tập id các Photo đang được quan tâm (để tô trái tim trên danh sách API).
  FavoriteIdsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'favoriteIdsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$favoriteIdsHash();

  @$internal
  @override
  $ProviderElement<Set<int>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Set<int> create(Ref ref) {
    return favoriteIds(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<int>>(value),
    );
  }
}

String _$favoriteIdsHash() => r'b115b3dfc6615c70cb41b95ca703f4d41b7f0fa0';
