import 'dart:developer';

import 'package:bookly/core/utils/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess)
          {
            log('Success2');
            return SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 20),
                    child: BestSellerItem(
                      bookModel: state.books[index],
                    ),
                  );
                }, childCount: state.books.length));
          }
        else if(state is NewestBooksLoading)
          {
            return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
          }
        else if(state is NewestBooksFailure)
          {
            return SliverToBoxAdapter(child: CustomErrorWidget(ErrorMessage: state.errorMessage));
          }
        else
          {
            return SliverToBoxAdapter(child: CustomErrorWidget(ErrorMessage: 'There was an Error , please try again'));
          }
      },
    );
  }
}
