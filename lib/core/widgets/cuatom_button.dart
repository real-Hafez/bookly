import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';

class custom_Button extends StatelessWidget {
  const custom_Button({
    super.key,
    required this.background_color,
    required this.text_color,
    this.borderRadius,
    required this.text,
  });
  final Color background_color;
  final Color text_color;
  final String text;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: background_color,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: text_color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
