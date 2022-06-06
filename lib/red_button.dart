import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class RedButton extends StatelessWidget {
  const RedButton({
    Key? key,
    required this.onTap,
    required this.redButtonText,
  }) : super(key: key);

  final Function() onTap;
  final String redButtonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            redButtonText,
            style: kBigButtonTextStyle,
          ),
        ),
        color: kColorButton,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.fromLTRB(15, 5, 15, 15),
      ),
    );
  }
}
