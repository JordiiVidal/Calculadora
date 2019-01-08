import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  double num1 = 0.0, num2 = 0.0, result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CALCULADORA'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(30.0),
              width: double.maxFinite,
              decoration: new BoxDecoration(
                  color: Colors.grey[100],
                  border: new Border.all(color: Colors.grey)),
              child: new Text(
                "1212",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
            )
          ],
        ));
  }
}
