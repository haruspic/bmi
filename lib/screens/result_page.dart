import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResults,
      required this.resultText,
      required this.interpritation});
  final double bmiResults;
  final String resultText;
  final String interpritation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResulTexttStyle,
                    ),
                    Text(
                      bmiResults.toStringAsFixed(1),
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpritation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE')
          ],
        ));
  }
}
