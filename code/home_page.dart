import 'dart:math';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  Random random =Random.secure();
  var score = 0;
  final dicelist =[
    'images/d1.png',
    'images/d2.png',
    'images/d3.png',
    'images/d4.png',
    'images/d5.png',
    'images/d6.png',
  ];
  int index=0;
  void _roleTheDice(){
    setState(() {
      index= random.nextInt(6);
      score +=index+1;
    });
    //print(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Dice Game'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Total Score : $score',style: TextStyle(fontSize: 50.0),),
            SizedBox(height: 150,),
            Image.asset(dicelist[index],height: 150,width: 150,fit: BoxFit.cover,),
            RaisedButton(
              child: Text('Role the Dice'),
              onPressed: _roleTheDice,
            ),
          ],
        ),
      ),

    );
  }
}
