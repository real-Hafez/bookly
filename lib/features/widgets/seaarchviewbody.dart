import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Bestsellerlistviewitem%20.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_book_image.dart';
import 'package:bookly/features/widgets/custom_search_text_field.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';

class seaarchviewbody extends StatelessWidget {
  const seaarchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: custom_text_field(),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'search result',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: 23,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Expanded(child: search_List_view()),
      ],
    );
  }
}

class search_List_view extends StatelessWidget {
  const search_List_view({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: book_List_view_item(),
      ),
    );
  }
}
