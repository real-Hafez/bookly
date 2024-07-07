import 'package:bookly/features/widgets/seaarchviewbody.dart';
import 'package:flutter/material.dart';

class SearchFeathure extends StatelessWidget {
  const SearchFeathure({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: seaarchviewbody()),
    );
  }
}
