import 'package:flutter/material.dart';

import 'presentation/pages/homepage.dart';
import 'config/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomePage(appName: appName),
    );
  }
}
