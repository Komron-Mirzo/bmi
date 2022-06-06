import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton(
      {Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final IconData icon;

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: const Color(0xFF37384D),
      shape: const CircleBorder(),
      constraints: const BoxConstraints(
        minHeight: 56.0,
        minWidth: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
