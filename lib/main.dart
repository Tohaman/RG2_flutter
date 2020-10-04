import "package:flutter/material.dart";
import 'package:flutter_demo/ui/main/HomeView.dart';

import 'ui/BottomNavBar.dart';
import 'ui/Root.dart';


void main() => runApp(Root());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          accentColor: Colors.orange
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      home: BottomNavBar(),
    );
  }
}
