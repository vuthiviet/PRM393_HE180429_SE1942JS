import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/photo_list_viewmodel.dart';
import '../viewmodels/wishlist_viewmodel.dart';
import 'theme_menu_button.dart';
import 'widgets/photo_tile.dart';

/// Screen 1: danh sách Photo lấy từ API.
class PhotoListScreen extends ConsumerWidget {
  const PhotoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photosAsync = ref.watch(photoListViewModelProvider);
    final favoriteIds = ref.watch(favoriteIdsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Photos'),
        actions: const [ThemeMenuButton()],
      ),
      body: photosAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Lỗi: $err', textAlign: TextAlign.center),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () =>
                    ref.read(photoListViewModelProvider.notifier).refresh(),
                child: const Text('Thử lại'),
              ),
            ],
          ),
        ),
        data: (photos) => RefreshIndicator(
          onRefresh: () =>
              ref.read(photoListViewModelProvider.notifier).refresh(),
          child: ListView.builder(
            itemCount: photos.length,
            itemBuilder: (context, index) {
              final photo = photos[index];
              final isFavorite = favoriteIds.contains(photo.id);
              return PhotoTile(
                photo: photo,
                isFavorite: isFavorite,
                onFavoritePressed: () {
                  ref.read(wishlistViewModelProvider.notifier).toggle(photo);
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                      duration: const Duration(seconds: 1),
                      content: Text(isFavorite
                          ? 'Đã xóa Photo ${photo.id} khỏi WishList'
                          : 'Đã thêm Photo ${photo.id} vào WishList'),
                    ));
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
