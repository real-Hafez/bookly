import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Featuredlistview.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_app_bar_book_detils.dart';
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
        ],
      ),
    );
  }
}
