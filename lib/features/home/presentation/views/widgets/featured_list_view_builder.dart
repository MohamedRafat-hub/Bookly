import 'dart:developer';

import 'package:bookly/core/utils/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/features_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViewBuilder extends StatelessWidget {
  const FeaturedListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesBooksCubit, FeaturesBooksState>(
      builder: (context, state) {
        if (state is FeaturesBooksSuccess) {
          log('Success');
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: FeaturedListViewItem(
                      imageUrl: (state.books[index].volumeInfo?.imageLinks
                              ?.thumbnail!) ??
                          'https://img.freepik.com/free-vector/minimalist-book-cover-template_23-2148899519.jpg?w=360',
                    ),
                  );
                }),
          );
        } else if (state is FeaturesBooksLoading) {
          log('Loading');
          return Center(child: CircularProgressIndicator());
        } else if (state is FeaturesBooksFailure) {
          log('Failure');
          return CustomErrorWidget(
            ErrorMessage: state.errorMessage,
          );
        } else {
          return Text('There was an Error Please try agian');
        }
      },
    );
  }
}
