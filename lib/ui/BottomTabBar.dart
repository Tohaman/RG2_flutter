import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/main/HomeView.dart';
import 'package:flutter_demo/ui/settings/SettingsView.dart';
import 'package:flutter_demo/ui/trainers/TrainerView.dart';

import 'info/InfoView.dart';

class BottomTabBar extends StatefulWidget {
  @override
  _BottomTabBar createState() => _BottomTabBar();
}

class _BottomTabBar extends State<BottomTabBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  String title = "RG2 - Flutter";

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: TabBarView(
        children: <Widget>[
          InfoView(),
          HomeView(),
          TrainerView(),
          SettingsView()
        ],
        physics: NeverScrollableScrollPhysics(),
        //Блокировка свайпа в BottomTabBar
        controller: tabController,
      ),
      bottomNavigationBar: Material(
        color: Colors.orange,
        child: TabBar(
          onTap: (index) {
            switch (index) {
              case 0:
                setState(() { title = "Инфо"; });
                break;
              case 1:
                setState(() { title = "Обучалки"; });
                break;
              case 2:
                setState(() { title = "Тренажеры"; });
                break;
              case 3:
                setState(() { title = "Настройки"; });
                break;
            }
          },
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.black87,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.info_outline_rounded),
              // text: "Инфо",
            ),
            Tab(
              icon: Icon(Icons.menu_book_rounded),
              // text: "Обучалки"
            ),
            Tab(
              icon: Icon(Icons.timer),
              // text: "Тренажеры",
            ),
            Tab(
              icon: Icon(Icons.settings_outlined),
              // text: "Настройки",
            ),
          ],
          controller: tabController,
        ),
      ),
    );
  }
}
