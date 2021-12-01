// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_enter_text_into_text_field.dart';
import './step/i_tap_icon.dart';
import './step/i_see_text.dart';

void main() {
  group('''Products''', () {
    testWidgets('''User adds a product''', (tester) async {
      await theAppIsRunning(tester);
      await iEnterTextIntoTextField(tester, 'EAN-13', 0);
      await iTapIcon(tester, Icons.add);
      await iSeeText(tester, 'EAN-13');
    });
  });
}
