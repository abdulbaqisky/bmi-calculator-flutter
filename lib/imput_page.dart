import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'newContainer.dart';
import 'reUse.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  /*Color maleCardColor = inActiveColor;
  Color femaleCardColor = inActiveColor;

  void updateCard(Gender selectedGender) {
    //male card is pressed
    if (selectedGender == Gender.male) {
      if (maleCardColor == inActiveColor) {
        maleCardColor = activeColor;
      } else {
        maleCardColor = inActiveColor;
        femaleCardColor = activeColor;
      }
    }
    //female card is pressed
    if (selectedGender == Gender.female) {
      if (femaleCardColor == inActiveColor) {
        femaleCardColor = activeColor;
      } else {
        femaleCardColor = inActiveColor;
        maleCardColor = activeColor;
      }
    }
  }*/

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
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveColor
                        : kInActiveColor,
                    cardChild: ReUse(
                      label: 'MALE',
                      iconMe: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: NewContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveColor
                        : kInActiveColor,
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
            child: NewContainer(
              colour: kInActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Colors.pink,
                    inactiveColor: Color(0XFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: NewContainer(colour: kInActiveColor),
                ),
                Expanded(
                  child: NewContainer(colour: kInActiveColor),
                ),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            width: double.infinity,
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
