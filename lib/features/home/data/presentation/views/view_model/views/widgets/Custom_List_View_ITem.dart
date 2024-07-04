import 'package:bookly/core/utilts/assets.dart';
import 'package:flutter/material.dart';

class Featured_item extends StatelessWidget {
  const Featured_item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.9 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  assets_Data.first_book,
                ),
              )),
        ),
      ),
    );
  }
}
