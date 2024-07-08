import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';

class custom_err_widget extends StatelessWidget {
  const custom_err_widget({super.key, required this.errmsg});
  final String errmsg;

  @override
  Widget build(BuildContext context) {
    return Text(
      errmsg,
      style: Styles.textStyle20,
    );
  }
}
