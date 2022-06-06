import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './custom_card.dart';
import './icon_widget.dart';
import './constants.dart';
import 'circle_button.dart';
import 'red_button.dart';
import 'calculator_brain.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

enum GenderType { male, female }
GenderType? gender;
int height = 190;
int weight = 60;
int age = 18;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator App"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: CustomCard(
                        tapCard: () {
                          setState(() {
                            gender = GenderType.male;
                          });
                        },
                        cardColor: gender == GenderType.male
                            ? kActiveColor
                            : kInactiveColor,
                        childCard: const IconWidget(
                          customIcon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomCard(
                        tapCard: () {
                          setState(() {
                            gender = GenderType.female;
                          });
                        },
                        cardColor: gender == GenderType.female
                            ? kActiveColor
                            : kInactiveColor,
                        childCard: const IconWidget(
                          customIcon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CustomCard(
                  cardColor: kActiveColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "HEIGHT",
                        style: kIconTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.ideographic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberTextStyle,
                          ),
                          const Text(
                            "cm",
                            style: kIconTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                        min: 60,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        value: height.toDouble(),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: CustomCard(
                        cardColor: kActiveColor,
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "WEIGHT",
                              style: kIconTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomActionButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 25.0,
                                ),
                                CustomActionButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomCard(
                        cardColor: kActiveColor,
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "AGE",
                              style: kIconTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomActionButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 25.0,
                                ),
                                CustomActionButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              RedButton(
                redButtonText: 'CALCULATE',
                onTap: () {
                  CalculateBrain calc =
                      CalculateBrain(weight: weight, height: height);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        resultFeedback: calc.getFeedback(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
