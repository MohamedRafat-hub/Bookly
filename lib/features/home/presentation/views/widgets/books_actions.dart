import 'package:flutter/material.dart';

import 'custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: CustomButton(
                  buttonName: '19.99E',
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16) , bottomLeft: Radius.circular(16)),
                  textColor: Colors.black)),

          Expanded(
              child: CustomButton(
                  buttonName: 'Free preview',
                  backgroundColor: Color(0xFFEF8363),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(16) , bottomRight: Radius.circular(16)),
                  textColor: Colors.white)),
        ],
      ),
    );
  }
}