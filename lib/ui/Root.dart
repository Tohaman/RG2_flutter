import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'BottomNavBar.dart';
import 'ThemeModel.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ThemeModel(),
      child: MyThemedApp(),
    );
  }
}

class MyThemedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ThemeModel>(
      builder: (context, _, model) => MaterialApp(
        theme: model.currentTheme,
        home: BottomNavBar(),
      ),
    );
  }
}

