// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_enter_into_inputwithkey_field.dart';
import './step/i_tap_icon.dart';
import './step/i_see_text.dart';

void main() {
  group('''Products''', () {
    testWidgets('''User adds a product''', (tester) async {
      await theAppIsRunning(tester);
      await iEnterIntoInputwithkeyField(tester, '1234567890123', 'gtinInput');
      await iTapIcon(tester, Icons.add);
      await iSeeText(tester, '1234567890123');
    });
  });
}
