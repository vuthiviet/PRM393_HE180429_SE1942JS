import 'package:flutter/material.dart';

/// ============================================================
/// EXERCISE 2 - INPUT WIDGETS
/// Slider, Switch, RadioListTile, DatePicker
/// ============================================================

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State<InputControlsDemo> createState() => _InputControlsDemoState();
}

/// State của InputControlsDemo
class _InputControlsDemoState extends State<InputControlsDemo> {

  // ============================================================
  // STEP 1: TẠO BIẾN LƯU GIÁ TRỊ
  // ============================================================

  // Lưu giá trị của Slider.
  // Ban đầu = 50.
  double rating = 50;

  // Lưu trạng thái của Switch.
  // false = đang tắt.
  bool isActive = false;

  // Lưu thể loại được chọn.
  // Ban đầu chưa chọn nên = null.
  String? selectedGenre;

  // Lưu ngày được chọn từ DatePicker.
  DateTime? selectedDate;


  // ============================================================
  // STEP 2: HIỂN THỊ DATE PICKER
  // ============================================================

  Future<void> selectDate() async {

    // showDatePicker() mở lịch để người dùng chọn ngày.
    final DateTime? pickedDate = await showDatePicker(
      context: context,

      // Ngày bắt đầu mặc định là ngày hiện tại.
      initialDate: DateTime.now(),

      // Không cho chọn ngày trước năm 2020.
      firstDate: DateTime(2020),

      // Cho phép chọn đến năm 2030.
      lastDate: DateTime(2030),
    );

    // Nếu người dùng đã chọn một ngày
    // thì cập nhật selectedDate.
    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }


  // ============================================================
  // STEP 3: BUILD UI
  // ============================================================

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // --------------------------------------------------------
      // APP BAR
      // --------------------------------------------------------
      appBar: AppBar(
        title: const Text(
          'Exercise 2 - Input Controls',
        ),
      ),

      // --------------------------------------------------------
      // BODY
      // --------------------------------------------------------
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ==================================================
              // STEP 4: SLIDER
              // ==================================================

              const Text(
                'Rating (Slider)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Slider(
                // Giá trị hiện tại của Slider.
                value: rating,

                // Giá trị nhỏ nhất.
                min: 0,

                // Giá trị lớn nhất.
                max: 100,

                // Chia Slider thành 100 bước.
                divisions: 100,

                // Khi người dùng kéo Slider,
                // giá trị rating sẽ được cập nhật.
                onChanged: (double value) {
                  setState(() {
                    rating = value;
                  });
                },
              ),

              // Hiển thị giá trị hiện tại.
              Text(
                'Current value: ${rating.round()}',
              ),

              const SizedBox(height: 20),


              // ==================================================
              // STEP 5: SWITCH
              // ==================================================

              const Text(
                'Active (Switch)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SwitchListTile(
                title: const Text(
                  'Is movie active?',
                ),

                // Trạng thái hiện tại của Switch.
                value: isActive,

                // Khi người dùng bật/tắt Switch.
                onChanged: (bool value) {
                  setState(() {
                    isActive = value;
                  });
                },
              ),

              // Hiển thị trạng thái hiện tại.
              Text(
                'Status: ${isActive ? "Active" : "Inactive"}',
              ),

              const SizedBox(height: 20),


              // ==================================================
              // STEP 6: RADIOLISTTILE
              // ==================================================

              const Text(
                'Genre (RadioListTile)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Radio option 1
              RadioListTile<String>(
                title: const Text('Action'),

                // Giá trị của Radio này.
                value: 'Action',

                // Giá trị đang được chọn.
                groupValue: selectedGenre,

                // Khi người dùng chọn Action.
                onChanged: (String? value) {
                  setState(() {
                    selectedGenre = value;
                  });
                },
              ),

              // Radio option 2
              RadioListTile<String>(
                title: const Text('Comedy'),

                // Giá trị của Radio này.
                value: 'Comedy',

                // Giá trị đang được chọn.
                groupValue: selectedGenre,

                // Khi người dùng chọn Comedy.
                onChanged: (String? value) {
                  setState(() {
                    selectedGenre = value;
                  });
                },
              ),

              // Hiển thị genre đang được chọn.
              Text(
                'Selected genre: ${selectedGenre ?? "None"}',
              ),

              const SizedBox(height: 20),


              // ==================================================
              // STEP 7: DATE PICKER BUTTON
              // ==================================================

              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  // Khi bấm button thì mở DatePicker.
                  onPressed: selectDate,

                  child: const Text(
                    'Open Date Picker',
                  ),
                ),
              ),

              const SizedBox(height: 15),


              // ==================================================
              // STEP 8: HIỂN THỊ NGÀY ĐÃ CHỌN
              // ==================================================

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