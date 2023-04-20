import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    return Center(
      child: Row(
        children: <Widget>[
          TextButton(
            onPressed: () {
              print('Left button pressed');
            },
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              print('Right button pressed');
            },
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*




 */
