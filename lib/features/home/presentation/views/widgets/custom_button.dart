import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        required this.buttonName,
        required this.backgroundColor,
        required this.textColor,
        required this.borderRadius});

  final String buttonName;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonName,
          style: TextStyle(
              fontSize: 16,
              color: textColor,
              fontWeight: FontWeight.bold),
        ),
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
      ),
    );
  }
}