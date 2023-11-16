import 'package:flutter_test/flutter_test.dart';
import 'package:iteqno/data/model/my_item.dart'; // Make sure to import the correct path

void main() {
  group('MyItem Class Test', () {
    test('MyItem should have the correct properties', () {
      // Arrange
      final myItem = MyItem(id: 1, title: 'Test Title');

      // Act & Assert
      expect(myItem.id, 1);
      expect(myItem.title, 'Test Title');
    });




    test('MyItem instances with different properties should not be equal', () {
      // Arrange
      final item1 = MyItem(id: 1, title: 'Test Title 1');
      final item2 = MyItem(id: 2, title: 'Test Title 2');

      // Act & Assert
      expect(item1 == item2, false);
    });
  });
}
