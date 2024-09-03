import 'package:cms/src/configs/src.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should render correctly', (WidgetTester tester) async {
    // arrange
    await tester.pumpWidget(App());
    // assert
    expect(find.text('Home'), findsOne);
    expect(find.text('See last posts'), findsOne);
  });

  testWidgets(
      'When click at posts text'
      'Should redirect to posts page', (WidgetTester tester) async {
    // arrange
    await tester.pumpWidget(App());
    // act
    await tester.tap(find.text('See last posts'));
    await tester.pumpAndSettle();
    // assert
    expect(find.text('Home'), findsNothing);
    expect(find.text('Posts'), findsOne);
  });
}
