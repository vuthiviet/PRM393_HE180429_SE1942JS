import 'package:flutter/material.dart';

// Exercise 1
import 'core_widgets_demo.dart';

// Exercise 2
import 'input_controls_demo.dart';

// Exercise 3
import 'layout_demo.dart';

// Exercise 4
import 'app_structure_demo.dart';

// Exercise 5
import 'common_ui_fixes.dart';

void main() {
  runApp(const MyApp());
}

/// ============================================================
/// MAIN APP
/// ============================================================
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // Lưu trạng thái Dark Mode
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Lab 4 - Flutter UI Fundamentals',

      // ========================================================
      // LIGHT THEME
      // ========================================================
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
        brightness: Brightness.light,
      ),

      // ========================================================
      // DARK THEME
      // ========================================================
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),

      // Chọn Light hoặc Dark Theme
      themeMode: isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,

      // Màn hình chính
      home: HomePage(
        isDarkMode: isDarkMode,

        // Hàm đổi Dark Mode
        onThemeChanged: () {
          setState(() {
            isDarkMode = !isDarkMode;
          });
        },
      ),
    );
  }
}

/// ============================================================
/// HOME PAGE
/// Màn hình chính của Lab 4
/// ============================================================
class HomePage extends StatelessWidget {

  final bool isDarkMode;
  final VoidCallback onThemeChanged;

  const HomePage({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ========================================================
      // APP BAR
      // ========================================================
      appBar: AppBar(
        title: const Text(
          'Lab 4 - Flutter UI Fundamentals',
        ),
      ),

      // ========================================================
      // BODY
      // ========================================================
      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // Tiêu đề
            const Text(
              'Flutter UI Exercises',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // ==================================================
            // EXERCISE 1
            // ==================================================
            Card(
              child: ListTile(
                title: const Text(
                  'Exercise 1 - Core Widgets',
                ),
                subtitle: const Text(
                  'Demo',
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),

                // Mở Exercise 1
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CoreWidgetsDemo();
                      },
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // ==================================================
            // EXERCISE 2
            // ==================================================
            Card(
              child: ListTile(
                title: const Text(
                  'Exercise 2 - Input Controls',
                ),
                subtitle: const Text(
                  'Demo',
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),

                // Mở Exercise 2
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const InputControlsDemo();
                      },
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // ==================================================
            // EXERCISE 3
            // ==================================================
            Card(
              child: ListTile(
                title: const Text(
                  'Exercise 3 - Layout Demo',
                ),
                subtitle: const Text(
                  '',
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),

                // Mở Exercise 3
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LayoutDemo();
                      },
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // ==================================================
            // EXERCISE 4
            // ==================================================
            Card(
              child: ListTile(
                title: const Text(
                  'Exercise 4 - App Structure & Theme',
                ),
                subtitle: const Text(
                  'Theme',
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),

                // Mở Exercise 4
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AppStructureDemo(
                          isDarkMode: isDarkMode,
                          onThemeChanged: onThemeChanged,
                        );
                      },
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // ==================================================
            // EXERCISE 5
            // ==================================================
            Card(
              child: ListTile(
                title: const Text(
                  'Exercise 5 - Common UI Fixes',
                ),
                subtitle: const Text(
                  'Fixes',
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),

                // Mở Exercise 5
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CommonUiFixes();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}