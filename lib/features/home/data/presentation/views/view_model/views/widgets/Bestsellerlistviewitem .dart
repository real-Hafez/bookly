import 'package:bookly/core/utilts/app_utilts.dart';
import 'package:bookly/core/utilts/assets.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Bestsellerlistviewitem extends StatelessWidget {
  const Bestsellerlistviewitem({super.key});

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
              const SizedBox(
                width: 24,
              ),
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
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      'Harry Potter and the Goblet of Fire',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      Text(
                        '19.99 €',
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

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '4.8',
          style: Styles.textStyle14.copyWith(
              color: const Color(
            0xffFFFFFF,
          )),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text('(2390)'),
      ],
    );
  }
}
