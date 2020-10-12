import 'package:flutter/material.dart';
import 'package:bmi/cards.dart';

const Color color = Color(0xff333333);
const String ver = 'APP VERSION : 1.000.00';
const String description = '''This Body Mass Index (BMI)
App is health category app
which tells you about your 
health. ''';
const String developer = '''This App is designed and developed by 
Ajay Manjhi At BIT Sindri of batch 2k19 
for any quires email me at 
ajay963@outlook.com ''';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABOUT'),
        backgroundColor: Colors.grey[50],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Txtstyle(
                    type: 'BMI',
                    size: 40,
                    weight: FontWeight.w900,
                    colour: Colors.black)),
            Expanded(
                flex: 2, child: Image(image: AssetImage('assets/bmi.png'))),
            SizedBox(
              height: 80,
            ),
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Txtstyle(
                        type: ver,
                        size: 20,
                        weight: FontWeight.bold,
                        colour: Colors.black),
                    SizedBox(height: 20),
                    Txtstyle(
                        type: description,
                        size: 15,
                        weight: FontWeight.w300,
                        colour: color),
                    SizedBox(height: 10),
                    Txtstyle(
                        type: developer,
                        size: 15,
                        weight: FontWeight.bold,
                        colour: color)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
