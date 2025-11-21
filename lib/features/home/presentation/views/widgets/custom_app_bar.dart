import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo , height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search , size: 35,),
          ),
        ],
      ),
    );
  }
}
