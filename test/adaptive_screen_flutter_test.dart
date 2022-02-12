import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Adaptive screen test', () {
    test('init layout', () {
      var mobile = ScreenInit.tabBreakPoint;
      expect(mobile, 600.0);

      ScreenInit.setTabBreakPoint(800.0);

      expect(ScreenInit.tabBreakPoint, 800.0);
    });
    testWidgets('Mobile layout widget test', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: AdaptiveScreen(
          key: Key('AdaptiveWidget'),
          mobile: Text('ini mobile'),
        ),
      ));
      final textMobile = find.text('ini mobile');
      final adaptiveWidget = find.byKey(const Key('AdaptiveWidget'));

      expect(textMobile, findsOneWidget);
      expect(adaptiveWidget, findsWidgets);
    });
    testWidgets('Tab layout widget test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: AdaptiveScreen(
          key: const Key('AdaptiveWidget'),
          tab: Container(
            key: const Key('WidgetTab'),
            height: 50,
            width: 50,
            color: Colors.white,
            child: const Text('T'),
          ),
        ),
      ));
      final textTab = find.byKey(const Key('WidgetTab'));
      final adaptiveWidget = find.byKey(const Key('AdaptiveWidget'));

      expect(textTab, findsOneWidget);
      expect(adaptiveWidget, findsWidgets);
    });

    testWidgets('Web layout widget test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: AdaptiveScreen(
          key: const Key('AdaptiveWidget'),
          web: Container(
            key: const Key('WidgetWeb'),
            height: 50,
            width: 50,
            color: Colors.white,
            child: const Text('T'),
          ),
        ),
      ));
      final textWeb = find.byKey(const Key('WidgetWeb'));
      final adaptiveWidget = find.byKey(const Key('AdaptiveWidget'));

      expect(textWeb, findsOneWidget);
      expect(adaptiveWidget, findsWidgets);
    });
  });
}
