import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/step/i_see_icon.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> screenshotVerified(WidgetTester tester, String scenario) async {
  await screenMatchesGolden(tester, scenario);
}
