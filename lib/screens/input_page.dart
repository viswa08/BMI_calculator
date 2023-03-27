import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/input_box.dart';
import 'package:bmi_calculator/components/icon_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'result_page.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;

  double _heightVal = 160;
  int _weightVal = 60;
  int _ageVal = 29;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: inputBox(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: (selectedGender == Gender.male)
                      ? activeColor
                      : inactiveColor,
                  cardChild: iconCard(
                    icon: maleIcon,
                    iconText: maleIconText,
                  ),
                )),
                Expanded(
                    child: inputBox(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: (selectedGender == Gender.female)
                      ? activeColor
                      : inactiveColor,
                  cardChild:
                      iconCard(icon: femaleIcon, iconText: femaleIconText),
                )),
              ],
            ),
          ),
          Expanded(
              child: inputBox(
            colour: activeColor,
            cardChild: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      _heightVal.round().toString(),
                      style: kDisplayNumlTextStyle,
                    ),
                    Text('cm')
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Color(0XFFEB1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0XFF8D8E98),
                    overlayColor: Color(0X29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(
                      value: _heightVal,
                      min: 105.0,
                      max: 214.0,
                      //label: _heightVal.round().toString(),
                      divisions: 109,
                      onChanged: (double val) {
                        //print(val);
                        setState(() {
                          _heightVal = val;
                        });
                      }),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: inputBox(
                    colour: inactiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          kweightConstText,
                          style: kLabelTextStyle,
                        ),
                        Text(
                          _weightVal.toString(),
                          style: kDisplayNumlTextStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    _weightVal++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              RoundIconButton(
                                icon: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    _weightVal--;
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: inputBox(
                  colour: inactiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        kageConstText,
                        style: kLabelTextStyle,
                      ),
                      Text(
                        _ageVal.toString(),
                        style: kDisplayNumlTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icon(FontAwesomeIcons.plus),
                              onPressed: () {
                                setState(() {
                                  _ageVal++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            RoundIconButton(
                              icon: Icon(FontAwesomeIcons.minus),
                              onPressed: () {
                                setState(() {
                                  _ageVal--;
                                });
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              bmiBrain brain = bmiBrain(weight: _weightVal, height: _heightVal);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiRes: brain.bmiResult(),
                            bmiVal: brain.bmiVal(),
                            bmiMsg: brain.bmiInterpret(),
                          )));
            },
            child: Container(
              color: Color(0XFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    calConstText,
                    style: kBigButtonTextStyle,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
