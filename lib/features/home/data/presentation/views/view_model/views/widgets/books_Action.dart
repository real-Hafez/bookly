import 'package:bookly/core/widgets/cuatom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class Book_action extends StatelessWidget {
  const Book_action({super.key, required BookModel bookModel});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Row(
        children: [
          Expanded(
              child: custom_Button(
            background_color: Colors.white,
            text_color: Colors.black,
            text: '19.99€',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          )),
          Expanded(
              child: custom_Button(
            background_color: Color(0xffEF8262),
            text_color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: 'Free preview',
          ))
        ],
      ),
    );
  }
}
