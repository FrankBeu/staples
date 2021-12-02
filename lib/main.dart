import 'package:flutter/material.dart';

import 'presentation/pages/homepage.dart';
import 'config/constants.dart';
import 'injectionContainer.dart' as di;
import 'presentation/pages/productPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomePage(appName: appName),
      // home: ProductPage(),
    );
  }
}
