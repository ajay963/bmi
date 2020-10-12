import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const List<Color> kMaleColor = [Color(0xffA5FECB), Color(0xff20BDFF)];
const List<Color> kFemaleColor = [Color(0xffF4C4F3), Color(0xffFC67FA)];
const List<Color> kNeutralColor = [Color(0xAA78ffd6), Color(0xAAa8ff78)];

class DimensionCards extends StatefulWidget {
  final String type;
  final String unit;
  DimensionCards({@required this.type, @required this.unit});

  @override
  _DimensionCardsState createState() => _DimensionCardsState();
}

class _DimensionCardsState extends State<DimensionCards> {
  int age = 24;
  int weight = 65;
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
                widget.unit,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              )
            ],
          ),
          Text(
            widget.type,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 40,
            ),
          ),
          Row(
            children: <Widget>[
              CircularButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    age--;
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

class Txtstyle extends StatelessWidget {
  final String type;
  final double size;
  final FontWeight weight;
  final Color colour;
  Txtstyle(
      {@required this.type,
      @required this.size,
      @required this.weight,
      @required this.colour});
  @override
  Widget build(BuildContext context) {
    return Text(
      type,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: size, fontWeight: weight, color: colour),
    );
  }
}

class CircularButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  CircularButton({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Colors.grey[200],
    );
  }
}
