import "package:flutter/material.dart";

class TrainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Инфо')),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Тренажеры", style: TextStyle(fontSize: 40))
              ]
          ),
        )
    );
  }
}