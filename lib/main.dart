import "package:flutter/material.dart";
import 'package:flutter_demo/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Preferences.dart';
import 'ui/Root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Prefer.prefs = await SharedPreferences.getInstance();
  Prefer.themeIndexPref = Prefer.prefs.getInt(THEME_NUMBER) ?? 0;
  runApp(Root());
}


