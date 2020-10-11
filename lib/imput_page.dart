import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'newContainer.dart';
import 'reUse.dart';

Color bottomContainerColor = Colors.pink;

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
                    cardChild: ReUse(
                      label: 'MALE',
                      iconMe: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: NewContainer(
                    colour: Color(0xFF1D1E33),
                    cardChild: ReUse(
                      label: 'FEMALE',
                      iconMe: FontAwesomeIcons.venus,
                    ),
                  ),
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
          Container(
            height: 80.0,
            width: double.infinity,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
