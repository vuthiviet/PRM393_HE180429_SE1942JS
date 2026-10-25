import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../models/photo.dart';

/// Quản lý SQLite: bảng Photo lưu các ảnh được "quan tâm".
class DatabaseHelper {
  static const _dbName = 'photos.db';
  static const _dbVersion = 1;
  static const table = 'Photo';

  Database? _db;

  Future<Database> get database async {
    return _db ??= await _open();
  }

  Future<Database> _open() async {
    final path = join(await getDatabasesPath(), _dbName);
    return openDatabase(
      path,
      version: _dbVersion,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $table (
            id INTEGER PRIMARY KEY,
            albumId INTEGER NOT NULL,
            title TEXT NOT NULL,
            url TEXT NOT NULL,
            thumbnailUrl TEXT NOT NULL
          )
        ''');
      },
    );
  }

  Future<void> insertPhoto(Photo photo) async {
    final db = await database;
    await db.insert(
      table,
      photo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> deletePhoto(int id) async {
    final db = await database;
    await db.delete(table, where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Photo>> getPhotos() async {
    final db = await database;
    final rows = await db.query(table, orderBy: 'id ASC');
    return rows.map(Photo.fromMap).toList();
  }
}
