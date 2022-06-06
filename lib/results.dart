import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'red_button.dart';
import 'custom_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.bmiResult,
    required this.resultText,
    required this.resultFeedback,
  });

  final String bmiResult;
  final String resultText;
  final String resultFeedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  "Natijangiz",
                  style: kNumberTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: CustomCard(
                cardColor: kActiveColor,
                childCard: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        resultFeedback,
                        textAlign: TextAlign.center,
                        style: kAdviceTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: RedButton(
                redButtonText: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
