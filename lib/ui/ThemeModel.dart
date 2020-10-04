import 'package:flutter/material.dart';
import 'package:flutter_demo/res/themes/app_themes.dart';
import 'package:scoped_model/scoped_model.dart';

class ThemeModel extends Model {
  /// The state of the model.
  ThemeData currentTheme;

  ThemeModel() : currentTheme = appThemeData[AppTheme.OrangeDark];

  /// Changes the [currentTheme]
  /// and dependent widgets are notified using [notifyListeners].
  void toggleTheme(AppTheme theme) {
    currentTheme = appThemeData[theme];
    notifyListeners();
  }
}