import 'package:flutter_demo/dataSource/entitys/phases.dart';
import 'package:flutter_demo/res/main_menu/main2x2.dart';
import 'package:flutter_demo/res/main_menu/main3x3.dart';
import 'package:flutter_demo/res/main_menu/main3x3/rozov.dart';

import 'entitys/mainDBItem.dart';

class Repository {

  //singleton
  Repository._privateConstructor();

  static final Repository instance = Repository._privateConstructor();

  static List<MainDBItem> _cache;

  Future <List<MainDBItem>> get cache async {
    if (_cache != null) return cache;
    await _initCache();
    return _cache;
  }

  _initCache() async {
    _cache = List();
    await _initPhase(Main2x2());
    await _initPhase(Main3x3());
    await _initPhase(Rozov());
  }

  Future _initPhase(Phase phase) async {
    for (var i = 0; i < phase.count; i++) {
      var item = MainDBItem(
          phase: phase.phase,
          id: i,
          title: phase.titles()[i],
          icon: phase.icons()[i],
          description: phase.descriptions()[i],
          url: phase.urls()[i],
          comment: phase.comments()[i],
          isFavourite: false,
          favComment: "",
          subId: 0);
      _cache.add(item);
    }
  }

  Future<List> getPhaseList(String phase) async {
    List<MainDBItem> allItems = await instance.cache;
    var result = allItems.where((item) => item.phase == phase).toList();
    return result;
  }

}