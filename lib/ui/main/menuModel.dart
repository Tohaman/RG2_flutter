import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class MenuModel with ChangeNotifier {
  String _title = "Пример текста";
  //Геттер для получения title
  String get title => _title;

  changeString(String text) {
    _title = text;
    notifyListeners();
  }
}