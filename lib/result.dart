import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class Result extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  Result(
      {@required this.bmi,
      @required this.interpretation,
      @required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI',
          style: klabelTextStyle.copyWith(
            color: Colors.white,
            fontSize: 26.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Your BMI',
                style: klabelTextStyle.copyWith(
                    color: Colors.white, fontSize: 50.0),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876)),
                  ),
                  Text(
                    bmi,
                    style: klabelTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: klabelTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 23.0,
                    ),
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
          )
        ],
      ),
    );
  }
}
