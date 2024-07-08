import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/BookRating.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/books_Action.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_book_image.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';

class book_dtls_sec extends StatelessWidget {
  const book_dtls_sec({super.key});

  @override
  Widget build(BuildContext context) {
    var witdh = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: witdh * .2),
          child: const custom_book_image(
            image_url:
                'https://m.media-amazon.com/images/I/61j1khSftbL._AC_SL1024_.jpg',
          ),
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
      ],
    );
  }
}
