import 'package:bookly/core/widgets/custom_err_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indactor.dart';
import 'package:bookly/features/home/data/presentation/manager/cubit/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBookssucsess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: custom_book_image(
                      image_url:
                          state.books[index].volumeInfo.imageLinks.thumbnail ??
                              '',
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksfailure) {
          return custom_err_widget(errmsg: state.errmsg);
        } else {
          return const CustomLoadingIndactor();
        }
      },
    );
  }
}
