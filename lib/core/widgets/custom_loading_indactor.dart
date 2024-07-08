import 'package:flutter/material.dart';

class CustomLoadingIndactor extends StatelessWidget {
  const CustomLoadingIndactor({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
