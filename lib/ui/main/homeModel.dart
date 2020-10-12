import 'package:flutter/widgets.dart';
import 'package:flutter_demo/dataSource/entitys/mainDBItem.dart';
import 'package:flutter_demo/dataSource/entitys/simpleItem.dart';
import 'package:flutter_demo/dataSource/repository.dart';
import 'package:scoped_model/scoped_model.dart';

class HomeModel extends Model {
  var exampleText = "Some Text";
  List<MainDBItem> menuList = List();

  init() async {
    menuList = await Repository.instance.getPhaseList("MAIN3X3");
    notifyListeners();
  }

  var count  = 0;
  String get counts => exampleText + " " + count.toString();

  addCount() {
    count++;
    notifyListeners();
  }


}

HomeModel homeModel = HomeModel();