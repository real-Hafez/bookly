import 'package:bookly/core/widgets/custom_err_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indactor.dart';
import 'package:bookly/features/home/data/presentation/manager/cubit/newesst_books/cubit/newst_books_cubit.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Bestsellerlistviewitem%20.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Custom_Appbar.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/Featuredlistview.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
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
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBookssucsess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: book_List_view_item(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewstBooksfailure) {
          return custom_err_widget(errmsg: state.err_msg);
        } else {
          return const CustomLoadingIndactor();
        }
      },
    );
  }
}
