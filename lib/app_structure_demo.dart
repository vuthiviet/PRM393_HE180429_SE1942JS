import 'package:flutter/material.dart';

/// ============================================================
/// EXERCISE 4 - APP STRUCTURE & THEME
/// Scaffold, AppBar, Body, FAB, ThemeData, Dark Mode
/// ============================================================

class AppStructureDemo extends StatelessWidget {

  // Callback dùng để thay đổi Dark Mode.
  final bool isDarkMode;
  final VoidCallback onThemeChanged;

  const AppStructureDemo({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ========================================================
      // STEP 1: APP BAR
      // ========================================================
      appBar: AppBar(
        title: const Text(
          'Exercise 4 - App Structure',
        ),

        actions: [

          // Hiển thị chữ Dark.
          const Text('Dark'),

          // Khoảng cách.
          const SizedBox(width: 8),

          // ====================================================
          // STEP 2: DARK MODE SWITCH
          // ====================================================
          Switch(
            value: isDarkMode,

            // Khi người dùng bật/tắt Switch.
            onChanged: (value) {
              onThemeChanged();
            },
          ),

          const SizedBox(width: 8),
        ],
      ),

      // ========================================================
      // STEP 3: BODY
      // ========================================================
      body: const Center(
        child: Text(
          'This is a simple screen with theme toggle.',
          textAlign: TextAlign.center,
        ),
      ),

      // ========================================================
      // STEP 4: FLOATING ACTION BUTTON
      // ========================================================
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          // Hiển thị SnackBar khi nhấn FAB.
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Floating Action Button pressed!',
              ),
            ),
          );
        },

        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}