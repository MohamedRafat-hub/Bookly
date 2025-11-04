import 'package:animate_do/animate_do.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeInDown(child: Image.asset(AssetsData.logo)),
        FadeInUp(child: const Text('Read free books' ,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),)),
      ],
    );
  }
}