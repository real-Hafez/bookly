import 'package:bookly/core/utilts/assets.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Custom_Appbar.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Custom_List_View_ITem.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Featuredlistview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Custom_Appbar(),
        Featuredlistview(),
        Padding(
          padding: EdgeInsets.only(left: 24, top: 47),
          child: Text(
            'Best Seller',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Bestsellerlistviewitem()
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
