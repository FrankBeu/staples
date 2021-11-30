import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String appName;

  HomePage({Key? key, required this.appName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text(appName),
            ),
        body: Center(
            child: Text(appName,
                // style: Theme.of(context).textTheme.headline2,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 64.0,
                ))));
  }
}
