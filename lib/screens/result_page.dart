import 'package:bmi_calculator/BmiBrain.dart';
import 'package:bmi_calculator/component/bottom_button.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final BMIBrain args = ModalRoute.of(context).settings.arguments;

    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    args.getResult(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    args.calculateBMI(),
                    style: kBMITextStyle,
                  ),
                  Text(
                      args.getInterpretation(),
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
