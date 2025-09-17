import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_hello/app/app.dart';

void main() {
  testWidgets('Hello There shows color change on tap, hex code can be copied', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Hello There'), findsOneWidget);

    final scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
    final initialColor = scaffold.backgroundColor;

    await tester.tap(find.byType(InkWell));
    await tester.pump();

    final scaffoldAfterTap = tester.widget<Scaffold>(find.byType(Scaffold));
    final newColor = scaffoldAfterTap.backgroundColor;

    expect(newColor, isNot(equals(initialColor)));
  });
}
