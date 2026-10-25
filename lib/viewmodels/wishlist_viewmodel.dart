import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/photo.dart';
import 'providers.dart';

part 'wishlist_viewmodel.g.dart';

/// ViewModel cho WishList: đọc/ghi bảng Photo trong SQLite.
@Riverpod(keepAlive: true)
class WishlistViewModel extends _$WishlistViewModel {
  @override
  Future<List<Photo>> build() {
    return ref.watch(photoRepositoryProvider).getWishlist();
  }

  /// Chọn "quan tâm" -> lưu vào SQLite.
  Future<void> add(Photo photo) async {
    await ref.read(photoRepositoryProvider).addToWishlist(photo);
    await _reload();
  }

  /// Chọn "không quan tâm" -> xóa khỏi SQLite.
  Future<void> remove(int id) async {
    await ref.read(photoRepositoryProvider).removeFromWishlist(id);
    await _reload();
  }

  Future<void> toggle(Photo photo) {
    final isFavorite = ref.read(favoriteIdsProvider).contains(photo.id);
    return isFavorite ? remove(photo.id) : add(photo);
  }

  Future<void> _reload() async {
    state = await AsyncValue.guard(
      () => ref.read(photoRepositoryProvider).getWishlist(),
    );
  }
}

/// Tập id các Photo đang được quan tâm (để tô trái tim trên danh sách API).
@riverpod
Set<int> favoriteIds(Ref ref) {
  final photos = ref.watch(wishlistViewModelProvider).value ?? const [];
  return photos.map((p) => p.id).toSet();
}
