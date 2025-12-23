import 'package:bookly/features/home/data/models/Book_Model.dart';
import 'package:bookly/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});

  static const String id = 'BookDetailsView';

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  late BookModel bookModel;
  bool _isLoaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_isLoaded) {
      bookModel =
      ModalRoute.of(context)!.settings.arguments as BookModel;

      BlocProvider.of<SimilarBooksCubit>(context)
          .fetchSimilarBooks(
        bookModel.volumeInfo?.categories?[0] ?? 'Movies',
      );

      _isLoaded = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookModel: bookModel,),
      ),
    );
  }
}





