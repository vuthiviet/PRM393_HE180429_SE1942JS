import 'package:flutter/material.dart';

/// ============================================================
/// EXERCISE 1 - CORE WIDGETS
/// Text, Image, Icon, Card, ListTile
/// ============================================================

class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --------------------------------------------------------
      // STEP 1: Tạo AppBar cho màn hình
      // --------------------------------------------------------
      appBar: AppBar(
        title: const Text('Exercise 1 - Core Widgets'),
      ),

      // --------------------------------------------------------
      // STEP 2: Tạo nội dung chính của màn hình
      // --------------------------------------------------------
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          // ----------------------------------------------------
          // Column dùng để sắp xếp các widget theo chiều dọc
          // ----------------------------------------------------
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ==================================================
              // STEP 3: TEXT WIDGET
              // ==================================================
              // Text dùng để hiển thị nội dung dạng chữ.
              const Text(
                'Welcome to Flutter UI',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Khoảng cách giữa Text và Icon
              const SizedBox(height: 20),

              // ==================================================
              // STEP 4: ICON WIDGET
              // ==================================================
              // Icon dùng để hiển thị biểu tượng Material Icons.
              const Center(
                child: Icon(
                  Icons.movie,
                  size: 60,
                  color: Colors.blue,
                ),
              ),

              // Khoảng cách
              const SizedBox(height: 20),

              // ==================================================
              // STEP 5: IMAGE.NETWORK
              // ==================================================
              // Image.network() dùng để lấy hình ảnh từ Internet.
              Image.network(
                'https://images.unsplash.com/photo-1544620347-c4fd4a3d5957',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,

                // Nếu hình ảnh không tải được,
                // hiển thị một Icon thay thế.
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 60,
                    ),
                  );
                },
              ),

              // Khoảng cách
              const SizedBox(height: 20),

              // ==================================================
              // STEP 6: CARD WIDGET
              // ==================================================
              // Card tạo một vùng nội dung có dạng thẻ.
              Card(
                elevation: 4,

                // =================================================
                // STEP 7: LISTTILE WIDGET
                // =================================================
                // ListTile được đặt bên trong Card.
                child: ListTile(

                  // Icon ở phía bên trái
                  leading: const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),

                  // Tiêu đề
                  title: const Text(
                    'Movie Item',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Nội dung mô tả
                  subtitle: const Text(
                    'This is a sample ListTile inside a Card.',
                  ),

                  // Icon ở phía bên phải
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}