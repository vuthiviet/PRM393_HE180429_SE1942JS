import 'package:flutter/material.dart';

/// ============================================================
/// EXERCISE 3 - LAYOUT BASICS
/// Column, Row, Padding, SizedBox, ListView.builder
/// ============================================================

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ========================================================
      // STEP 1: APP BAR
      // ========================================================
      appBar: AppBar(
        title: const Text(
          'Exercise 3 - Layout Demo',
        ),
      ),

      // ========================================================
      // STEP 2: BODY
      // ========================================================
      body: Padding(
        // Padding tạo khoảng cách giữa nội dung
        // và cạnh màn hình.
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // ==================================================
            // STEP 3: TITLE
            // ==================================================
            const Text(
              'Now Playing',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Tạo khoảng cách 12 pixel.
            const SizedBox(height: 12),

            // ==================================================
            // STEP 4: LISTVIEW.BUILDER
            // ==================================================
            // Expanded rất quan trọng.
            //
            // Vì ListView nằm bên trong Column,
            // nếu không có Expanded thì có thể xảy ra
            // lỗi "Vertical viewport was given unbounded height".
            Expanded(
              child: ListView.builder(

                // Số lượng movie.
                itemCount: 4,

                // Tạo từng item.
                itemBuilder: (context, index) {

                  // Danh sách tên movie.
                  final movies = [
                    'Avatar',
                    'Inception',
                    'Interstellar',
                    'Joker',
                  ];

                  // Icon chữ cái đầu.
                  final letters = [
                    'A',
                    'I',
                    'I',
                    'J',
                  ];

                  return Card(
                    margin: const EdgeInsets.only(
                      bottom: 8,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(8),

                      child: Row(
                        children: [

                          // ====================================
                          // STEP 5: ROW - AVATAR
                          // ====================================
                          CircleAvatar(
                            child: Text(
                              letters[index],
                            ),
                          ),

                          // Khoảng cách giữa Avatar
                          // và thông tin movie.
                          const SizedBox(width: 12),

                          // ====================================
                          // STEP 6: MOVIE INFORMATION
                          // ====================================
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,

                              children: [

                                // Tên movie.
                                Text(
                                  movies[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                // Khoảng cách nhỏ.
                                const SizedBox(height: 4),

                                // Mô tả movie.
                                const Text(
                                  'Sample description',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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