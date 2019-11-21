import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_Card.dart';
import 'button_bulid.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.resultInterpretation});

  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Your Result',
                  style: kTitleText,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kactiveCardcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiRes,
                  ),
                  Text(
                    resultInterpretation,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            ButtonTitle: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
