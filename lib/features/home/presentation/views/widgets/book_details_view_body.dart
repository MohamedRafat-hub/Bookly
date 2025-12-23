import 'package:bookly/features/home/data/models/Book_Model.dart';
import 'package:bookly/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../book_details_view.dart';
import 'book_details_app_bar.dart';
import 'book_rating.dart';
import 'featured_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .32),
                child: FeaturedListViewItem(
                  imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? 'assets/images/movie.jpg',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                bookModel.volumeInfo?.title ?? 'Not Available',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                bookModel.volumeInfo?.authors?[0] ?? 'Not Available',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
              // BookRating(),
              SizedBox(
                height: 20,
              ),
              BooksAction(
                bookModel: bookModel,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'You can also like',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),

              ),
              SizedBox(
                height: 16,
              ),
              Expanded(child: BooksSimilarListView()),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BooksSimilarListView extends StatelessWidget {
  const BooksSimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if(state is SimilarBooksSuccess)
      {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: ListView.builder(itemCount: state.books.length, scrollDirection: Axis.horizontal,itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: FeaturedListViewItem(
                imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? 'assets/mages/movie.jpg',
              ),
            );
          }),
        );
      }
    else if(state is SimilarBooksFailure)
      {
        return Center(child: Text(state.errorMessage));
      }
    else
      {
        return Center(child: CircularProgressIndicator(),);
      }
  },
);
  }
}

