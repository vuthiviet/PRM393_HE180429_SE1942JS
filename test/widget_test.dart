import 'package:flutter_test/flutter_test.dart';
import 'package:lab4/main.dart';

void main() {
  testWidgets('App renders products list', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Products'), findsOneWidget);
  });
}