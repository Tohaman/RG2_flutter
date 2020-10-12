
import 'package:flutter_demo/dataSource/repository.dart';
import 'package:flutter_demo/ui/main/menuModel.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(Repository.instance);
  locator.registerFactory<MenuModel>(() => MenuModel());
}