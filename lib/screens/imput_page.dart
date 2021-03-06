import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/components/round_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/newContainer.dart';
import 'package:bmi_calculator/constants.dart';
import 'resultPage.dart';
import 'package:bmi_calculator/components/reUse.dart';
import 'package:bmi_calculator/calculatorBrain.dart';

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
  int weight = 60;
  int age = 10;
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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Colors.pink,
                      overlayColor: Color(0X29EB1555),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: NewContainer(
                    colour: kInActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(
                                    () {
                                      weight++;
                                    },
                                  );
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: NewContainer(
                    colour: kInActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(
                                    () {
                                      age++;
                                    },
                                  );
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
