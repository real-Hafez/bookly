import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Bestsellerlistviewitem%20.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Custom_Appbar.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Featuredlistview.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
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
            const SizedBox(
              height: 20,
            ),
          ],
        )),
        const SliverToBoxAdapter(
          child: Bestsellerlistview(),
        )
      ],
    );
  }
}

class Bestsellerlistview extends StatelessWidget {
  const Bestsellerlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 9),
          child: book_List_view_item(),
        );
      },
    );
  }
}
