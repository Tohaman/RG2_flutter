import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/main/HomeView.dart';
import 'package:flutter_demo/ui/settings/SettingsView.dart';
import 'package:flutter_demo/ui/trainers/TrainerView.dart';
import 'package:scoped_model/scoped_model.dart';

import 'ThemeModel.dart';
import 'info/Info2View.dart';
import 'info/InfoView.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBar createState() => _BottomNavBar();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomNavBar extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    InfoView(),
    HomeView(),
    TrainerView(),
    SettingsView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ScopedModelDescendant<ThemeModel>(
        builder: (context, _, model) => BottomNavigationBar(
          backgroundColor: model.currentTheme.primaryColor,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline_rounded),
              label: "Инфо",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded),
              label: "Обучалки",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              label: "Тренажеры",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Настройки",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
