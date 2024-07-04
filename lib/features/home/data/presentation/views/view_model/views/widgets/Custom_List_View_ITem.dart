import 'package:bookly/core/utilts/assets.dart';
import 'package:flutter/material.dart';

class Custom_List_View_ITem extends StatelessWidget {
  const Custom_List_View_ITem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
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
