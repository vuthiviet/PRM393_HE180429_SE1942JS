import 'package:flutter/material.dart';

import '../../models/photo.dart';

class PhotoTile extends StatelessWidget {
  final Photo photo;
  final bool isFavorite;
  final VoidCallback onFavoritePressed;

  const PhotoTile({
    super.key,
    required this.photo,
    required this.isFavorite,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            photo.displayThumbnail,
            width: 64,
            height: 64,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 64,
              height: 64,
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              child: const Icon(Icons.broken_image),
            ),
          ),
        ),
        title: Text(photo.title, maxLines: 2, overflow: TextOverflow.ellipsis),
        subtitle: Text('ID: ${photo.id} • Album: ${photo.albumId}'),
        trailing: IconButton(
          tooltip: isFavorite ? 'Không quan tâm' : 'Quan tâm',
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : null,
          ),
          onPressed: onFavoritePressed,
        ),
      ),
    );
  }
}
