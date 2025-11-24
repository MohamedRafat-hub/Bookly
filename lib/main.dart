import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
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
    return MaterialApp(
      routes: {
        HomeView.id : (context)=>HomeView(),
        BookDetailsView.id : (context)=> BookDetailsView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KPrimaryColor
      ),
      home: SplashView(),
    );
  }
}
