// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel cấu hình ThemeMode, lưu bằng SharedPreferences.

@ProviderFor(ThemeViewModel)
final themeViewModelProvider = ThemeViewModelProvider._();

/// ViewModel cấu hình ThemeMode, lưu bằng SharedPreferences.
final class ThemeViewModelProvider
    extends $NotifierProvider<ThemeViewModel, ThemeMode> {
  /// ViewModel cấu hình ThemeMode, lưu bằng SharedPreferences.
  ThemeViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'themeViewModelProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$themeViewModelHash();

  @$internal
  @override
  ThemeViewModel create() => ThemeViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$themeViewModelHash() => r'ec4d305f5a07e17ec53a609393f2c3dd5e8b4c99';

/// ViewModel cấu hình ThemeMode, lưu bằng SharedPreferences.

abstract class _$ThemeViewModel extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ThemeMode, ThemeMode>, ThemeMode, Object?, Object?>;
    return element.handleCreate(ref, build);
  }
}
