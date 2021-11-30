import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:staples/main.dart';

Future<void> theAppIsRendered(WidgetTester tester) async {
  // throw UnimplementedError();

  // set in flutter_test_config.dart
  // await loadAppFonts();

  // single device
  // await tester.pumpWidgetBuilder(MyApp());

  // multiple devices
  final builder = DeviceBuilder()..addScenario(widget: MyApp());
  await tester.pumpDeviceBuilder(builder);
}
