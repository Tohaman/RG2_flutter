import 'package:flutter/material.dart';
import 'package:flutter_demo/Constants.dart';
import 'package:flutter_demo/res/themes/app_themes.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Utils.dart';


class ThemeModel extends Model {
  /// The state of the model.
  ThemeData currentTheme;

  _saveThemeToSP(int value) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setInt(THEME_NUMBER, value);
  }

  ThemeModel() {
    print("Выбрана тема номер - ${Utils.themeIndexPref}");
    currentTheme = appThemeData[AppTheme.values[Utils.themeIndexPref]];
  }

  /// Changes the [currentTheme]
  /// and dependent widgets are notified using [notifyListeners()].
  void toggleTheme(AppTheme theme) {
    currentTheme = appThemeData[theme];
    _saveThemeToSP(theme.index);
    notifyListeners();
  }
}
