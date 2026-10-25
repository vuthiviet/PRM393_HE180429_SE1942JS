/// Model: một Photo lấy từ https://jsonplaceholder.typicode.com/photos
class Photo {
  final int id;
  final int albumId;
  final String title;
  final String url;
  final String thumbnailUrl;

  const Photo({
    required this.id,
    required this.albumId,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        id: json['id'] as int,
        albumId: json['albumId'] as int,
        title: json['title'] as String,
        url: json['url'] as String,
        thumbnailUrl: json['thumbnailUrl'] as String,
      );

  /// Dùng cho SQLite (cột trùng tên với khóa JSON).
  factory Photo.fromMap(Map<String, dynamic> map) => Photo.fromJson(map);

  Map<String, dynamic> toMap() => {
        'id': id,
        'albumId': albumId,
        'title': title,
        'url': url,
        'thumbnailUrl': thumbnailUrl,
      };

  /// via.placeholder.com (domain gốc của API) đã ngừng hoạt động,
  /// nên hiển thị ảnh thay thế từ picsum theo id để giao diện có hình.
  String get displayThumbnail => 'https://picsum.photos/seed/photo$id/150';
  String get displayImage => 'https://picsum.photos/seed/photo$id/600';
}
