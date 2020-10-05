import "package:flutter/material.dart";
import 'package:flutter_demo/ui/main/HomeModel.dart';
import 'package:scoped_model/scoped_model.dart';

import 'DetailModel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<DetailModel>(
        model: detailModel,
        child: ScopedModelDescendant<DetailModel>(
            builder: (BuildContext ctx, Widget child, DetailModel model) {
              return Scaffold(
                  appBar: AppBar(title: Text('DetailInfo')),
                  body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(model.someTexts, style: TextStyle(fontSize: 30)),
                          RaisedButton(
                            child: const Text('Back to the future'),
                            onPressed: () {
                              Navigator.pop(ctx);
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
