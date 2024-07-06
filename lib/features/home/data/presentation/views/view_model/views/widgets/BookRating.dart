import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
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
          width: 6.3,
        ),
        const Text(
          '(2390)',
        ),
      ],
    );
  }
}
