import 'package:flutter_demo/dataSource/entitys/phases.dart';

class Main3x3 implements Phase {
  @override
  int count = title.length;

  @override
  String phase = "MAIN3X3";

  @override
  List<String> titles()  => title;

  @override
  List<String> icons() => icon;

  @override
  List<String> descriptions() => description;

  @override
  List<String> urls() => url;

  @override
  List<String> comments() => List.filled(count, "");

//---------------------------------------------------------------------------

  static const title = [
    "С чего начать?",
    "Метод для начинающих от Антона Розова (10+)",
    "Метод для начинающих от Максима Чечнева (7+)",
    "Продвинутые методы (Фридрих (CFOP), ROUX)",
    "Сборка вслепую (Blind)",
    "Узоры на кубике"
  ];

  static const icon = [
    "main_1",
    "main_2",
    "main_3",
    "main_4",
    "main_5",
    "main_6"
  ];

  static const description = [
    "RECOMENDATION1",
    "ROZOV3X3",
    "BEGIN3X3",
    "G2F",
    "BLIND",
    "PATTERNS"
  ];

  static const url = [
    "",
    "submenu",
    "submenu",
    "submenu",
    "submenu",
    "submenu"
  ];

}