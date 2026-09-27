import 'package:flutter/material.dart';

/// ============================================================
/// EXERCISE 5 - DEBUG & FIX COMMON UI ERRORS
///
/// 1. ListView inside Column -> Expanded
/// 2. Overflow -> SingleChildScrollView
/// 3. State update -> setState()
/// 4. DatePicker -> valid BuildContext
/// ============================================================

class CommonUiFixes extends StatefulWidget {
  const CommonUiFixes({super.key});

  @override
  State<CommonUiFixes> createState() => _CommonUiFixesState();
}

class _CommonUiFixesState extends State<CommonUiFixes> {

  // ============================================================
  // STEP 1: VARIABLE CHO STATE UPDATE
  // ============================================================

  int counter = 0;

  // ============================================================
  // STEP 2: DATE ĐƯỢC CHỌN
  // ============================================================

  DateTime? selectedDate;


  // ============================================================
  // STEP 3: DATE PICKER
  // ============================================================

  Future<void> selectDate() async {

    // showDatePicker được gọi bên trong State
    // nên context ở đây là context hợp lệ.
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    // Nếu người dùng chọn ngày.
    if (pickedDate != null) {

      // setState giúp cập nhật UI.
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ========================================================
      // APP BAR
      // ========================================================
      appBar: AppBar(
        title: const Text(
          'Exercise 5 - Common UI Fixes',
        ),
      ),

      // ========================================================
      // STEP 4:
      // SINGLECHILDSCROLLVIEW
      // ========================================================
      //
      // Dùng SingleChildScrollView để tránh lỗi overflow
      // khi màn hình nhỏ hoặc có quá nhiều nội dung.
      //
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // ==================================================
              // FIX 1 - LISTVIEW + COLUMN
              // ==================================================

              const Text(
                '1. Correct ListView inside Column using Expanded',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 10),

              // Trong bài này chúng ta không đặt ListView
              // trực tiếp vào Column.
              //
              // ListView.builder bên trong Column thường cần
              // Expanded để có chiều cao xác định.
              SizedBox(
                height: 200,

                child: ListView.builder(
                  itemCount: 4,

                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.movie,
                      ),

                      title: Text(
                        'Movie ${index + 1}',
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),


              // ==================================================
              // FIX 2 - SINGLECHILDSCROLLVIEW
              // ==================================================

              const Text(
                '2. Fix overflow using SingleChildScrollView',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'SingleChildScrollView allows the user to scroll '
                    'when the content is larger than the screen.',
              ),

              const SizedBox(height: 20),


              // ==================================================
              // FIX 3 - SETSTATE
              // ==================================================

              const Text(
                '3. Fix state update using setState()',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                'Counter: $counter',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {

                  // ============================================
                  // setState() thông báo cho Flutter rằng
                  // dữ liệu đã thay đổi và cần build lại UI.
                  // ============================================
                  setState(() {
                    counter++;
                  });
                },

                child: const Text(
                  'Increase Counter',
                ),
              ),

              const SizedBox(height: 20),


              // ==================================================
              // FIX 4 - DATE PICKER
              // ==================================================

              const Text(
                '4. Fix DatePicker context error',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: selectDate,

                child: const Text(
                  'Open Date Picker',
                ),
              ),

              const SizedBox(height: 10),

              // Hiển thị ngày được chọn.
              Text(
                selectedDate == null
                    ? 'Selected date: None'
                    : 'Selected date: '
                    '${selectedDate!.day}/'
                    '${selectedDate!.month}/'
                    '${selectedDate!.year}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}