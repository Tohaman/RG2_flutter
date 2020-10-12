import 'package:flutter/material.dart';
import 'package:flutter_demo/di/service_locator.dart';
import 'package:flutter_demo/ui/main/menuModel.dart';
import 'package:scoped_model/scoped_model.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
        model: locator<MenuModel>(),
        child: ScopedModelDescendant<MenuModel>(
          builder: (context, child, model) => Scaffold(
            body: Center(
              child: Text(model.title),
            ),
          ),
        )
    );
  }
}
