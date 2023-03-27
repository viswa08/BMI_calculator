import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 65.0;
const activeColor = Color(0XFF13193A);
const inactiveColor = Color.fromARGB(255, 38, 41, 75);
const Icon maleIcon = Icon(
  FontAwesomeIcons.mars,
  size: 80.0,
);
const Icon femaleIcon = Icon(
  FontAwesomeIcons.venus,
  size: 80.0,
);

const maleIconText = 'MALE';
const femaleIconText = 'FEMALE';
const kweightConstText = 'WEIGHT';
const kageConstText = 'AGE';
const calConstText = 'CALCULATE';
const kyourResTxt = 'Your Result';
const krecalcText = 'RE-CALCULATE YOUR BMI';

const kLabelTextStyle = TextStyle(fontSize: 18.0, color: Color(0XFF8D8E98));
const kDisplayNumlTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kBigButtonTextStyle =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

const kTitleTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);

const kresultTextStyle = TextStyle(
    color: Color(0XFF24D876), fontSize: 22.0, fontWeight: FontWeight.bold);

const kBmiresultTextStyle =
    TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);

const kBmiMsgTextStyle = TextStyle(
  fontSize: 22.0,
);
