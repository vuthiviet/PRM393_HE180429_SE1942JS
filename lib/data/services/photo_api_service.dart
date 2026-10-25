import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/photo.dart';

/// Service gọi REST API.
class PhotoApiService {
  static const _baseUrl = 'https://jsonplaceholder.typicode.com/photos';

  final http.Client _client;

  PhotoApiService({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Photo>> fetchPhotos() async {
    final response = await _client.get(
      Uri.parse(_baseUrl),
      headers: {'Accept': 'application/json'},
    );
    if (response.statusCode != 200) {
      throw Exception('Lỗi tải dữ liệu (HTTP ${response.statusCode})');
    }
    final data = jsonDecode(response.body) as List<dynamic>;
    return data
        .map((e) => Photo.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
