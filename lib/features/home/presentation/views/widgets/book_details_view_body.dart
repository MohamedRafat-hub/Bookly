import 'package:bookly/features/home/presentation/views/widgets/books_actions.dart';
import 'package:flutter/material.dart';

import '../book_details_view.dart';
import 'book_details_app_bar.dart';
import 'book_rating.dart';
import 'featured_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                  imageUrl: '',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'The Jungle pop',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Mohamed Rafat',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 3,
              ),
              BookRating(),
              SizedBox(
                height: 30,
              ),
              BooksAction(),
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
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder( scrollDirection: Axis.horizontal,itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: FeaturedListViewItem(
            imageUrl: '',
          ),
        );
      }),
    );
  }
}

