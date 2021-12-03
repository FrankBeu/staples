import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Example: When I enter {'text'} into {1} input-withKey field
Future<void> iEnterIntoInputwithkeyField(
  WidgetTester tester,
  String text,
  // int index,
  String keyString,
) async {
  // final textField = find.byType(TextField).at(index);
  final textField = find.byKey(Key(keyString));

  await tester.enterText(textField, text);
}
