import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 20),
        child: BestSellerItem(),
      );
    }, childCount: 20));
  }
}
