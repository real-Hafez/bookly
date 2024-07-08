import 'package:bookly/core/utilts/app_utilts.dart';
import 'package:bookly/core/utilts/assets.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/BookRating.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/widgets/custom_book_image.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class book_List_view_item extends StatelessWidget {
  const book_List_view_item({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          GoRouter.of(context).push(app_routers.k_Book_Detils);
        },
        child: SizedBox(
          height: 140,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: custom_book_image(
                    image_url: bookModel.volumeInfo.imageLinks.thumbnail),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      Text(
                        'free',
                        style: Styles.textStyle20,
                      ),
                      SizedBox(
                        width: 39,
                      ),
                      BookRating(),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
