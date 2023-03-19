import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:package_name/main.dart';
import 'package:package_name/utils/api/base_http_client.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const AnimalApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  group('api', () {
    setUp(() {});

    test('TV list api', () async {
      await getTVList();
    });
  });
}
