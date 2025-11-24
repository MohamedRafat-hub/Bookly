import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, BookDetailsView.id);
        },
        child: Row(
          children: [
            Image.asset(
              'assets/mages/test.png',
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
                    'amazing course, thanks for the valuable information and for your effort',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Mohamed Rafat',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      '19.99E',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Icon(FontAwesomeIcons.solidStar , color: Colors.yellow,),
                    Text('4.8' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                    Text('(2390)' , style: TextStyle(color: Colors.grey , fontSize: 14),)
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