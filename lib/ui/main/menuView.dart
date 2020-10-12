import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/main/menuModel.dart';
import 'package:provider/provider.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MenuModel>(
      create: (context) => MenuModel(),
      child: Scaffold(
        body: Center(
          child: MenuWidget(),
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(context.watch<MenuModel>().title),
        TextField(
          onChanged: (newData) => context.read<MenuModel>().changeString(newData),
        )
      ],
    );
  }
}
