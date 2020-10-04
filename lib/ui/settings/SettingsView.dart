import "package:flutter/material.dart";
import 'package:flutter_demo/res/themes/app_themes.dart';
import 'package:scoped_model/scoped_model.dart';

import '../ThemeModel.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Инфо')),
      //ListView c выбором темы
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return ScopedModelDescendant<ThemeModel>(
            builder: (BuildContext ctx, _, ThemeModel model) {
              return Card(
                color: appThemeData[itemAppTheme].primaryColor,
                child: ListTile(
                  title: Text(
                    itemAppTheme.toString(),
                    style: appThemeData[itemAppTheme].textTheme.bodyText1,
                  ),
                  onTap: () {
                    model.toggleTheme(itemAppTheme);
                  },
                ),
              );
            }
          );
        },
      )
    );
  }
}
