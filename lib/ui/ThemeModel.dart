import 'package:flutter/material.dart';
import 'package:flutter_demo/res/themes/app_themes.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModel extends Model {
  /// The state of the model.
  ThemeData currentTheme;

  getData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
  }

  ThemeModel() {
    currentTheme = appThemeData[AppTheme.OrangeDark];
  }

  /// Changes the [currentTheme]
  /// and dependent widgets are notified using [notifyListeners].
  void toggleTheme(AppTheme theme) {
    currentTheme = appThemeData[theme];
    notifyListeners();
  }
}
