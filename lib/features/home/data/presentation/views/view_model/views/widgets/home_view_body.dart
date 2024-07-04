import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Custom_Appbar.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Custom_List_View_ITem.dart';
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
          padding: EdgeInsets.only(left: 24, top: 30),
          child: Text(
            'Best Seller',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}

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
          child: Featured_item(),
        ),
      ),
    );
  }
}
