import 'package:bookly/core/utilts/assets.dart';
import 'package:flutter/material.dart';

class custom_book_image extends StatelessWidget {
  const custom_book_image({super.key, required this.image_url});
  final String image_url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.9 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(image_url),
              )),
        ),
      ),
    );
  }
}
