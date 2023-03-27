import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/input_box.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiRes, required this.bmiVal, required this.bmiMsg});
  final String bmiRes;
  final String bmiVal;
  final String bmiMsg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  kyourResTxt,
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: inputBox(
                colour: activeColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiRes,
                      style: kresultTextStyle,
                    ),
                    Text(
                      bmiVal,
                      style: kBmiresultTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        bmiMsg,
                        textAlign: TextAlign.center,
                        style: kBmiMsgTextStyle,
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    krecalcText,
                    style: kBigButtonTextStyle,
                  ),
                ),
              ),
              color: Color(0XFFEB1555),
            ),
          ))
        ],
      ),
    );
  }
}
