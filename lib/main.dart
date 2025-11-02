import 'package:bookly/constants.dart';
import 'package:bookly/features/splash/data/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(Bookly());
}


class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KPrimaryColor
      ),
      home: SplashView(),
    );
  }
}
