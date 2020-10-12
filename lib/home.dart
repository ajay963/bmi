import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/cards.dart';
import 'package:bmi/result.dart';
import 'package:bmi/bmiwork.dart';

int height = 100;
int age = 24;
int weight = 65;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Txtstyle(
            type: 'BMI',
            size: 30,
            weight: FontWeight.w500,
            colour: Colors.black,
          ),
        ),
        Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[Age(), Weight()],
                ),
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Txtstyle(
                        type: 'Height:',
                        size: 30,
                        weight: FontWeight.w300,
                        colour: Colors.black),
                    Txtstyle(
                        type: '$height',
                        size: 40,
                        weight: FontWeight.w900,
                        colour: Colors.grey[900]),
                    Txtstyle(
                        type: 'CM',
                        size: 30,
                        weight: FontWeight.w300,
                        colour: Colors.black),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xffff6666),
                      inactiveTrackColor: Color(0xffff9999),
                      thumbColor: Color(0xffff5555),
                      overlayColor: Color(0x22ff0000),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
                  child: Slider(
                    value: height.toDouble(),
                    min: 10,
                    max: 300,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
                SizedBox(height: 10),
              ],
            )),
        Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Fxbmi calc = Fxbmi(age: age, height: height, weight: weight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                          bmi: calc.calcbmi(),
                          advice: calc.advice(),
                          wightResult: calc.getresult()),
                    ));
              },
              child: Center(
                  child: Container(
                color: Colors.black,
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.only(top: 20),
                child: Txtstyle(
                  type: 'CALCULATE',
                  size: 40,
                  weight: FontWeight.w900,
                  colour: Colors.white,
                ),
              )),
            ))
      ],
    );
  }
}

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                '$age',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                'Years',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              )
            ],
          ),
          Text(
            'Age',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 40,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              CircularButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    if (age > 1) {
                      age--;
                    } else {
                      age = 1;
                    }
                  });
                },
              ),
              SizedBox(width: 20),
              CircularButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  setState(() {
                    age++;
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                '$weight',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                'Kg',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              )
            ],
          ),
          Text(
            'Weight',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 40,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              CircularButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    if (weight > 1) {
                      weight--;
                    } else {
                      weight = 1;
                    }
                  });
                },
              ),
              SizedBox(width: 20),
              CircularButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  setState(() {
                    weight++;
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
