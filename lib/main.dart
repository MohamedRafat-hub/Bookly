import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/features_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/data/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  setUp();
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturesBooksCubit(
            gitIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            gitIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp(
        routes: {
          HomeView.id: (context) => HomeView(),
          BookDetailsView.id: (context) => BookDetailsView(),
        },
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: KPrimaryColor),
        home: SplashView(),
      ),
    );
  }
}
