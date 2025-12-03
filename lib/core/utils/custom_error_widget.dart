import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.ErrorMessage});
  final String ErrorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(ErrorMessage , style: TextStyle(color: Colors.red , fontWeight: FontWeight.w600 , fontSize: 20),);
  }
}
