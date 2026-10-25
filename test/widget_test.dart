import 'package:flutter_test/flutter_test.dart';
import 'package:lab5/models/photo.dart';

void main() {
  test('Photo map round-trip', () {
    const photo = Photo(
      id: 1,
      albumId: 1,
      title: 'accusamus beatae',
      url: 'https://via.placeholder.com/600/92c952',
      thumbnailUrl: 'https://via.placeholder.com/150/92c952',
    );
    final copy = Photo.fromMap(photo.toMap());
    expect(copy.id, photo.id);
    expect(copy.title, photo.title);
    expect(copy.thumbnailUrl, photo.thumbnailUrl);
  });
}
