import "package:flutter/material.dart";
import 'package:flutter_demo/ui/main/HomeModel.dart';
import 'package:scoped_model/scoped_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<HomeModel>(
      model: homeModel,
      child: ScopedModelDescendant<HomeModel>(
        builder: (BuildContext ctx, Widget child, HomeModel model) {
          return Scaffold(
            appBar: AppBar(title: Text('MyHelloWorld')),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(model.counts, style: TextStyle(fontSize: 40)),
                    RaisedButton(
                      child: const Text('Press Me'),
                      onPressed: () {
                        model.addCount();
                      },
                    ),
                  ]
              ),
            )
          );
        }
      )
    );
  }
}
