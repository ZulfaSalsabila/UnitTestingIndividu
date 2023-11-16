import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iteqno/data/model/my_item.dart';
import 'package:iteqno/ui/detail_screen.dart';

void main() {
  testWidgets('DetailScreen UI Test', (WidgetTester tester) async {
    // Create a MyItem instance for testing
    final testItem = MyItem(id: 1, title: 'Test Title');

    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: DetailScreen(item: testItem),
    ));

    // Verify that the app has the correct title in the AppBar
    expect(find.text('Detail Screen'), findsOneWidget);

    // Verify that the text in the body contains the correct item details
    expect(find.text('Test Title 1'), findsOneWidget);
    expect(find.text('1'), findsOneWidget);
  });
}