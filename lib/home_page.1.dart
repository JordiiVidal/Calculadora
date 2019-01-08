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
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Resultado : ' + result.toString(),
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Numero 1'),
              onChanged: (String value) {
                setState(() {
                  num1 = double.parse(value);
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Numero 2'),
              onChanged: (String value) {
                setState(() {
                  num2 = double.parse(value);
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text('+'),
                  onPressed: () {
                    setState(() {
                      result = num1 + num2;
                    });
                  },
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text('-'),
                  onPressed: () {
                     setState(() {
                      result = num1 - num2;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text('*'),
                  onPressed: () {
                     setState(() {
                      result = num1 * num2;
                    });
                  },
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text('/'),
                  onPressed: () {
                     setState(() {
                      result = num1 / num2;
                    });
                  },
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text('Clear'),
                  onPressed: () {
                     setState(() {
                      num1 = 0.0;
                      num2 = 0.0;
                      result = 0.0;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
