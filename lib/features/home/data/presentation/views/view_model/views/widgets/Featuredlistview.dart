import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class Featuredlistview extends StatelessWidget {
  const Featuredlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 6,
          ),
          child: custom_book_image(),
        ),
      ),
    );
  }
}
