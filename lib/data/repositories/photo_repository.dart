import '../../models/photo.dart';
import '../database/database_helper.dart';
import '../services/photo_api_service.dart';

/// Repository: nguồn dữ liệu duy nhất cho ViewModel (API + SQLite).
class PhotoRepository {
  final PhotoApiService _api;
  final DatabaseHelper _db;

  PhotoRepository(this._api, this._db);

  Future<List<Photo>> fetchRemotePhotos() => _api.fetchPhotos();

  Future<List<Photo>> getWishlist() => _db.getPhotos();

  Future<void> addToWishlist(Photo photo) => _db.insertPhoto(photo);

  Future<void> removeFromWishlist(int id) => _db.deletePhoto(id);
}
