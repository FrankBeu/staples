// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_text.dart';
import './step/the_app_is_rendered.dart';
import './step/screenshot_verified.dart';

import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  group('''Homepage''', () {
    testWidgets('''AppName is present on HomePage''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeText(tester, 'staples');
    });
    testGoldens('''Primary swatch color is brown''', (tester) async {
      await theAppIsRendered(tester);
      await screenshotVerified(tester, 'homepage');
    });
  });
}
