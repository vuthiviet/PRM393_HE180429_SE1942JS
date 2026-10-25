import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/wishlist_viewmodel.dart';
import 'theme_menu_button.dart';
import 'widgets/photo_tile.dart';

/// Screen 2: WishListPhoto - hiển thị các Photo lưu trong SQLite.
class WishlistScreen extends ConsumerWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlistAsync = ref.watch(wishlistViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('WishList Photo'),
        actions: const [ThemeMenuButton()],
      ),
      body: wishlistAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Lỗi: $err')),
        data: (photos) {
          if (photos.isEmpty) {
            return const Center(child: Text('Chưa có Photo nào được quan tâm'));
          }
          return ListView.builder(
            itemCount: photos.length,
            itemBuilder: (context, index) {
              final photo = photos[index];
              return PhotoTile(
                photo: photo,
                isFavorite: true,
                // Không quan tâm -> xóa khỏi SQLite
                onFavoritePressed: () => ref
                    .read(wishlistViewModelProvider.notifier)
                    .remove(photo.id),
              );
            },
          );
        },
      ),
    );
  }
}
