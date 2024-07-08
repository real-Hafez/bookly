import 'package:bookly/core/widgets/custom_err_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indactor.dart';
import 'package:bookly/features/home/data/presentation/manager/cubit/featcherdbookcubit/featuredbook_cubit.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Featuredlistview extends StatelessWidget {
  const Featuredlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbookCubit, FeaturedbookState>(
      builder: (context, state) {
        if (state is Featuredbooksucsess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                child: custom_book_image(
                  image_url: state.books[index].volumeInfo.imageLinks.thumbnail,
                ),
              ),
            ),
          );
        } else if (state is Featuredbookfailure) {
          return custom_err_widget(errmsg: state.err_msg);
        }
        return const CustomLoadingIndactor();
      },
    );
  }
}
