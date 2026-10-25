import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/database/database_helper.dart';
import '../data/repositories/photo_repository.dart';
import '../data/services/photo_api_service.dart';

part 'providers.g.dart';

/// SharedPreferences được khởi tạo trong main() và override trong ProviderScope.
@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(Ref ref) =>
    throw UnimplementedError('sharedPreferencesProvider phải được override');

@Riverpod(keepAlive: true)
PhotoApiService photoApiService(Ref ref) => PhotoApiService();

@Riverpod(keepAlive: true)
DatabaseHelper databaseHelper(Ref ref) => DatabaseHelper();

@Riverpod(keepAlive: true)
PhotoRepository photoRepository(Ref ref) => PhotoRepository(
      ref.watch(photoApiServiceProvider),
      ref.watch(databaseHelperProvider),
    );
