import 'package:flutter/material.dart';
import 'dart:math';
// end imports


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

} // end main

// begin classes
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {


  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              print('Left button pressed');
              setState(() {
                leftDiceNumber = Random().nextInt(5) + 1;
              });

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
              print('Left button pressed');
              setState(() {
                rightDiceNumber = Random().nextInt(5) + 1;
              });

            },
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );

  }
// end classes
}

/*




 */
