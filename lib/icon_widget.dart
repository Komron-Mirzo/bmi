import 'package:flutter/material.dart';
import 'constants.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
    required this.customIcon,
    required this.label,
  }) : super(key: key);

  final IconData customIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          customIcon,
          size: 80.0,
        ),
        const SizedBox(height: 13.0),
        Text(
          label,
          style: kIconTextStyle,
        ),
      ],
    );
  }
}
