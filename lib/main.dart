import 'dart:io';

import "package:flutter/material.dart";
import 'package:flutter_demo/Constants.dart';
import "package:path_provider/path_provider.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'Utils.dart';
import 'ui/Root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory docsDir = await getApplicationDocumentsDirectory();
  Utils.docsDir = docsDir;
  Utils.prefs = await SharedPreferences.getInstance();
  Utils.themeIndexPref = Utils.prefs.getInt(THEME_NUMBER) ?? 0;
  runApp(Root());
}


