import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_app/auth/presentation/pages/signin_page.dart';

void main() {
  group("Signin page tests", () { 
    testWidgets("Page correctly loaded and has text fields", (tester) async {
      final textField1 = find.widgetWithText(TextFormField, "Email or Phone No.");
      final textField2 = find.widgetWithText(TextFormField, "Password");
      
      await tester.runAsync(() => tester.pumpWidget(
          const ProviderScope(
            child: MaterialApp(
              home: Scaffold(
                body: SigninPage(),
              ),
            ),
          )
      ));

      await tester.pumpAndSettle();
      expect(textField1, findsOneWidget);
      expect(textField2, findsOneWidget);
    });
    testWidgets("if password wrong enters error", (tester) async {
      final textField1 = find.widgetWithText(TextFormField, "Email or Phone No.");
      final button = find.byType(ElevatedButton);

      await tester.runAsync(() => tester.pumpWidget(
          const ProviderScope(
            child: MaterialApp(
              home: Scaffold(
                body: SigninPage(),
              ),
            ),
          )
      ));

      await tester.pumpAndSettle();
      await tester.enterText(textField1, "kfsk");
      await tester.pumpAndSettle();
      await tester.dragUntilVisible(
        button,
        find.byType(SingleChildScrollView),
        const Offset(0, 50),
      );
      await tester.tap(button);
      await tester.pumpAndSettle();
      expect(find.text("Wrong username"), findsOneWidget);
    });
    testWidgets("if username wrong enters error", (tester) async {
      final textField1 = find.widgetWithText(TextFormField, "Email or Phone No.");
      final textField2 = find.widgetWithText(TextFormField, "Password");
      final button = find.byType(ElevatedButton);

      await tester.runAsync(() => tester.pumpWidget(
          const ProviderScope(
            child: MaterialApp(
              home: Scaffold(
                body: SigninPage(),
              ),
            ),
          )
      ));

      await tester.pumpAndSettle();
      await tester.enterText(textField1, "kminchelle");
      await tester.pumpAndSettle();
      await tester.enterText(textField2, "elle");
      await tester.pumpAndSettle();
      await tester.dragUntilVisible(
        button,
        find.byType(SingleChildScrollView),
        const Offset(0, 50),
      );
      await tester.tap(button);
      await tester.pumpAndSettle();
      expect(find.text("Wrong password"), findsOneWidget);
    });
  });
}