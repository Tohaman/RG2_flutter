import "dart:io";
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  /// для доступа к настройкам
  static SharedPreferences prefs;

  /// Индекс(номер) сохраненной темы
  static int themeIndexPref = 0;

  /// Путь к папке программы
  static Directory docsDir;
}

