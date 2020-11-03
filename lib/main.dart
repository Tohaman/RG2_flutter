import 'dart:io';

import "package:flutter/material.dart";
import 'package:flutter_demo/constants.dart';
import 'package:flutter_demo/dataSource/entitys/mainDBItem.dart';
import 'package:flutter_demo/dataSource/repository.dart';
import 'package:flutter_demo/di/service_locator.dart';
import "package:path_provider/path_provider.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'utils.dart';
import 'ui/root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory docsDir = await getApplicationDocumentsDirectory();
  print(docsDir.path);
  Utils.docsDir = docsDir;
  Utils.prefs = await SharedPreferences.getInstance();
  Utils.themeIndexPref = Utils.prefs.getInt(THEME_NUMBER) ?? 0;
  setupLocator();
  runApp(Root());
}



