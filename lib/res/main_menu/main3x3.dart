import 'package:flutter_demo/dataSource/entitys/phases.dart';

class Main3x3 implements Phases {

  @override
  String phase() => "MAIN3X3";

  @override
  List<String> titles()  => title;

  @override
  List<String> images() => image;

  @override
  List<String> descriptions() => description;

  @override
  List<String> urls() => url;

  @override
  List<String> comments() => [];

//---------------------------------------------------------------------------

  static const title = [
    "С чего начать?",
    "Метод для начинающих от Антона Розова (10+)",
    "Метод для начинающих от Максима Чечнева (7+)",
    "Продвинутые методы (Фридрих (CFOP), ROUX)",
    "Сборка вслепую (Blind)",
    "Узоры на кубике"
  ];

  static const image = [
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
    "some url",
    "submenu",
    "submenu",
    "submenu",
    "submenu",
    "submenu"
  ];

}