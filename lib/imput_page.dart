import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: NewContainer(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars, size: 80.0),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0XFF8D8E98),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: NewContainer(colour: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: NewContainer(colour: Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: NewContainer(colour: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: NewContainer(colour: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewContainer extends StatelessWidget {
  NewContainer({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

/*
ReUse(
iconMe: Icon(FontAwesomeIcons.mars),
what: Text('MALE')),
class ReUse extends StatelessWidget {
  ReUse({this.what, this.iconMe});

  final Text what;
  final Icon iconMe;
*/
