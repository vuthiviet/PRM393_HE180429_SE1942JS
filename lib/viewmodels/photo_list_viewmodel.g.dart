// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel cho màn hình danh sách Photo lấy từ API.

@ProviderFor(PhotoListViewModel)
final photoListViewModelProvider = PhotoListViewModelProvider._();

/// ViewModel cho màn hình danh sách Photo lấy từ API.
final class PhotoListViewModelProvider
    extends $AsyncNotifierProvider<PhotoListViewModel, List<Photo>> {
  /// ViewModel cho màn hình danh sách Photo lấy từ API.
  PhotoListViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'photoListViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$photoListViewModelHash();

  @$internal
  @override
  PhotoListViewModel create() => PhotoListViewModel();
}

String _$photoListViewModelHash() =>
    r'71cd5d2ad89783bc9d58e2cae75104844f2dbb80';

/// ViewModel cho màn hình danh sách Photo lấy từ API.

abstract class _$PhotoListViewModel extends $AsyncNotifier<List<Photo>> {
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
