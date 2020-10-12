import 'package:flutter/material.dart';
import 'package:bmi/cards.dart';
import 'package:bmi/about.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Result extends StatelessWidget {
  final String bmi;
  final String wightResult;
  final String advice;

  Result(
      {@required this.bmi, @required this.advice, @required this.wightResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: FaIcon(FontAwesomeIcons.info),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                })
          ],
          backgroundColor: Colors.grey[50],
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Txtstyle(
                    type: 'Result',
                    size: 50,
                    weight: FontWeight.w900,
                    colour: Colors.red[300]),
              ),
              Expanded(
                flex: 3,
                child: Txtstyle(
                    type: bmi,
                    size: 60,
                    weight: FontWeight.w900,
                    colour: Colors.grey[800]),
              ),
              Expanded(
                flex: 1,
                child: Txtstyle(
                    type: wightResult,
                    size: 25,
                    weight: FontWeight.bold,
                    colour: Colors.grey[800]),
              ),
              Expanded(
                flex: 1,
                child: Txtstyle(
                    type: advice,
                    size: 20,
                    weight: FontWeight.w300,
                    colour: Colors.grey[900]),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.black,
                    child: Txtstyle(
                        type: 'RECALCULATE',
                        size: 25,
                        weight: FontWeight.w900,
                        colour: Colors.red[400]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
