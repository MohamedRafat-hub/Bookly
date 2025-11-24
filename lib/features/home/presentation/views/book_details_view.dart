import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/book_details_app_bar.dart';
import 'widgets/book_rating.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  static const String id = 'BookDetailsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}




