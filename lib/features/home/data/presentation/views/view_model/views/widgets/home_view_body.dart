import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Custom_Appbar.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Custom_List_View_ITem.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Custom_Appbar(),
        Custom_List_View_ITem(),
      ],
    );
  }
}
