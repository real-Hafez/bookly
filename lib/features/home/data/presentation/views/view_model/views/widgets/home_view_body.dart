import 'package:bookly/core/utilts/assets.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Custom_Appbar.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Featuredlistview.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Custom_Appbar(),
        const Featuredlistview(),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 47),
          child: Text(
            'Best Seller',
            style: GoogleFonts.abel(
              textStyle: Styles.textstyle18.copyWith(
                fontSize: 26,
              ),
            ),
          ),
        ),
        const Bestsellerlistviewitem()
      ],
    );
  }
}

class Bestsellerlistviewitem extends StatelessWidget {
  const Bestsellerlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      assets_Data.first_book,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
