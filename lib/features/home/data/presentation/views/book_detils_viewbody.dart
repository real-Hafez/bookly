import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/book_dtls_sec.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_app_bar_book_detils.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/similar_Books_list_view.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';

class book_detils_view_body extends StatelessWidget {
  const book_detils_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const custom_app_bar_book_detils(),
                const book_dtls_sec(),
                const Expanded(
                  child: SizedBox(
                    height: 51,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const similar_Books_list_view(),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
