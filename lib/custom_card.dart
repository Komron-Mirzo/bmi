import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.cardColor,
    required this.childCard,
    this.tapCard,
  }) : super(key: key);

  final Color cardColor;
  final Widget childCard;
  final VoidCallback? tapCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapCard,
      child: Container(
        child: childCard,
        margin: const EdgeInsets.all(
          15.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardColor,
        ),
      ),
    );
  }
}
