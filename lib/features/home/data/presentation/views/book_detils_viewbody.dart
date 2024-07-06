import 'package:bookly/core/widgets/cuatom_button.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/BookRating.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/books_Action.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_app_bar_book_detils.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/similar_Books_list_view.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';

class book_detils_view_body extends StatelessWidget {
  const book_detils_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    var witdh = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          const custom_app_bar_book_detils(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: witdh * .2),
            child: const custom_book_image(),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          const Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const Book_action(),
          const SizedBox(
            height: 51,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const similar_Books_list_view(),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
