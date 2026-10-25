import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/theme_viewmodel.dart';

/// Nút chọn ThemeMode trên AppBar.
class ThemeMenuButton extends ConsumerWidget {
  const ThemeMenuButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = ref.watch(themeViewModelProvider);
    return PopupMenuButton<ThemeMode>(
      tooltip: 'Chế độ giao diện',
      icon: Icon(switch (current) {
        ThemeMode.light => Icons.light_mode,
        ThemeMode.dark => Icons.dark_mode,
        ThemeMode.system => Icons.brightness_auto,
      }),
      initialValue: current,
      onSelected: (mode) =>
          ref.read(themeViewModelProvider.notifier).setThemeMode(mode),
      itemBuilder: (_) => const [
        PopupMenuItem(value: ThemeMode.system, child: Text('Theo hệ thống')),
        PopupMenuItem(value: ThemeMode.light, child: Text('Sáng')),
        PopupMenuItem(value: ThemeMode.dark, child: Text('Tối')),
      ],
    );
  }
}
