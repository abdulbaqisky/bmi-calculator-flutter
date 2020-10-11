import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'newContainer.dart';
import 'reUse.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Colors.pink;
const inActiveColor = Color(0xFF1D1E33);
const activeColor = Color(0xFF111333);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveColor;
  Color femaleCardColor = inActiveColor;

  void updateCard(int gender) {
    //male card is pressed
    if (gender == 1) {
      if (maleCardColor == inActiveColor) {
        maleCardColor = activeColor;
      } else {
        maleCardColor = inActiveColor;
        femaleCardColor = activeColor;
      }
    }
    //female card is pressed
    if (gender == 2) {
      if (femaleCardColor == inActiveColor) {
        femaleCardColor = activeColor;
      } else {
        femaleCardColor = inActiveColor;
        maleCardColor = activeColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCard(1);
                      });
                    },
                    child: NewContainer(
                      colour: maleCardColor,
                      cardChild: ReUse(
                        label: 'MALE',
                        iconMe: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCard(2);
                      });
                    },
                    child: NewContainer(
                      colour: femaleCardColor,
                      cardChild: ReUse(
                        label: 'FEMALE',
                        iconMe: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: NewContainer(colour: inActiveColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: NewContainer(colour: inActiveColor),
                ),
                Expanded(
                  child: NewContainer(colour: inActiveColor),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
