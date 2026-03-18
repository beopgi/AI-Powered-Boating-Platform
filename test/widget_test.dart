import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/app.dart';

void main() {
  testWidgets('App loads and shows home UI', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('홈'), findsWidgets);
  });
}