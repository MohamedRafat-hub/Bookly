import 'package:bookly/features/home/data/models/Book_Model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: CustomButton(
                  buttonName: 'Free',
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16) , bottomLeft: Radius.circular(16)),
                  textColor: Colors.black)),

          Expanded(
              child: CustomButton(
                onPressed: () async{
                  Uri _url = Uri.parse(bookModel.accessInfo?.webReaderLink ?? '');
                  if ( await canLaunchUrl(_url)) {
                    await launchUrl(_url);
                  }
                  else
                    {
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('Could not launch preview link.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      });
                    }
                },
                  buttonName: 'Free preview',
                  backgroundColor: Color(0xFFEF8363),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(16) , bottomRight: Radius.circular(16)),
                  textColor: Colors.white)),
        ],
      ),
    );
  }
}