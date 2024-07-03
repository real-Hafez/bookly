import 'package:bookly/core/utilts/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(assets_Data.logo),
          const SizedBox(
            height: 2,
          ),
          const Text(
            'read free books ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
