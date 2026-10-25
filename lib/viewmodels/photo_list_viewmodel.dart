import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/photo.dart';
import 'providers.dart';

part 'photo_list_viewmodel.g.dart';

/// ViewModel cho màn hình danh sách Photo lấy từ API.
@riverpod
class PhotoListViewModel extends _$PhotoListViewModel {
  @override
  Future<List<Photo>> build() {
    return ref.watch(photoRepositoryProvider).fetchRemotePhotos();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(photoRepositoryProvider).fetchRemotePhotos(),
    );
  }
}
