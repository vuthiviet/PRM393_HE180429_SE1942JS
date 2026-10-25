# Lab 5 – Photos + WishList (MVVM · Riverpod Generator · SQLite · SharedPreferences)

## Chạy dự án
```bash
flutter create . --project-name lab5 --platforms=android,ios   # sinh thư mục nền tảng (giữ nguyên lib/)
flutter pub get
dart run build_runner build --delete-conflicting-outputs       # sinh *.g.dart cho Riverpod
flutter run
```
### Chạy trên Chrome
```bash
flutter create . --project-name lab5 --platforms=web
flutter pub get
dart run sqflite_common_ffi_web:setup                          # chép sqlite3.wasm + sqflite_sw.js vào web/
dart run build_runner build --delete-conflicting-outputs
flutter run -d chrome
```

Bản release Android cần thêm vào `android/app/src/main/AndroidManifest.xml`:
`<uses-permission android:name="android.permission.INTERNET"/>`

## Cấu trúc MVVM
```
lib/
├── main.dart                             ProviderScope + override SharedPreferences
├── models/photo.dart                     Model
├── data/
│   ├── services/photo_api_service.dart   gọi API jsonplaceholder
│   ├── database/database_helper.dart     SQLite – bảng Photo
│   └── repositories/photo_repository.dart
├── viewmodels/                           @riverpod providers (ViewModel)
│   ├── providers.dart                    DI: prefs, api, db, repository
│   ├── photo_list_viewmodel.dart         danh sách từ API
│   ├── wishlist_viewmodel.dart           thêm/xóa/đọc SQLite + favoriteIds
│   └── theme_viewmodel.dart              ThemeMode lưu SharedPreferences
└── views/                                UI (ConsumerWidget)
    ├── home_screen.dart                  NavigationBar 2 tab
    ├── photo_list_screen.dart            Screen 1 – Photos
    ├── wishlist_screen.dart              Screen 2 – WishListPhoto
    ├── theme_menu_button.dart
    └── widgets/photo_tile.dart
```
