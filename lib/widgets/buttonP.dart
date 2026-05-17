import 'package:flutter/material.dart';

class ButtonP extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double fontSize;

  const ButtonP({
    super.key,
    required this.text,
    required this.onPressed,

    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.height = 60,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,

      height: height,
      onPressed: onPressed,
      color: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),

      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
