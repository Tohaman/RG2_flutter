import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'detailModel.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<DetailModel>(
        model: detailModel,
        child: ScopedModelDescendant<DetailModel>(
            builder: (BuildContext ctx, Widget child, DetailModel model) {
          return Scaffold(
              //appBar: AppBar(title: Text('DetailInfo')),
              body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("images/vector.svg")),
                      Text(model.someTexts, style: TextStyle(fontSize: 30)),
                      RaisedButton(
                        child: const Text('Back to the future'),
                        onPressed: () {
                          Navigator.pop(ctx);
                        },
                      ),
                    ]),
          ));
        }));
  }
}
