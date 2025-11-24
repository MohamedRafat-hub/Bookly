import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        FontAwesomeIcons.solidStar,
        color: Colors.yellow,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        '4.8',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 7,
      ),
      Text('(2390)',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 16)),
    ]);

  }
}