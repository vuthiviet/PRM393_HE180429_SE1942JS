import 'package:flutter/material.dart';

// Import màn hình Exercise 1
import 'core_widgets_demo.dart';

// Import màn hình Exercise 2
import 'input_controls_demo.dart';

void main() {
  // Hàm main() là điểm bắt đầu của chương trình Flutter.
  runApp(const MyApp());
}

/// ============================================================
/// MAIN APP
/// Đây là ứng dụng chính của Lab 4.
/// ============================================================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Tắt dòng DEBUG ở góc màn hình.
      debugShowCheckedModeBanner: false,

      // Tên của ứng dụng.
      title: 'Lab 4 - Flutter UI Fundamentals',

      // Thiết lập Theme chung cho ứng dụng.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),

      // Màn hình đầu tiên khi chạy ứng dụng.
      home: const HomePage(),
    );
  }
}

/// ============================================================
/// HOME PAGE
/// Màn hình chính hiển thị danh sách các Exercise.
/// ============================================================
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // --------------------------------------------------
            // Tiêu đề
            // --------------------------------------------------
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

                // Icon bên trái.
                // leading: const Icon(
                //   Icons.widgets,
                //   color: Colors.blue,
                // ),

                // Tên Exercise.
                title: const Text(
                  'Exercise 1 - Core Widgets',
                ),

                // Mô tả Exercise.
                subtitle: const Text(
                  'Demo',
                ),

                // Icon bên phải.
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),

                // Khi người dùng nhấn vào Exercise 1.
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

                // // Icon bên trái.
                // leading: const Icon(
                //   Icons.touch_app,
                //   color: Colors.green,
                // ),

                // Tên Exercise.
                title: const Text(
                  'Exercise 2 - Input Controls',
                ),

                // Mô tả Exercise.
                subtitle: const Text(
                  'Demo',
                ),

                // Icon bên phải.
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),

                // Khi người dùng nhấn vào Exercise 2.
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
          ],
        ),
      ),
    );
  }
}