import 'package:bookly/features/home/data/models/Book_Model.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, BookDetailsView.id , arguments: bookModel);
        },
        child: Row(
          children: [
           AspectRatio(
          aspectRatio: 2.7 / 4,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl:  (bookModel.volumeInfo?.imageLinks?.thumbnail) ?? 'https://img.freepik.com/free-vector/minimalist-book-cover-template_23-2148899519.jpg?w=360',
                placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              )),
        ),
            SizedBox(
              width: 20,
            ),
            Column(
              spacing: 4,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                   bookModel.volumeInfo!.title!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  bookModel.volumeInfo!.authors![0].toString(),
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      'Free',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}