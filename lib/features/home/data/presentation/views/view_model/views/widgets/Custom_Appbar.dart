import 'package:bookly/core/utilts/app_utilts.dart';
import 'package:bookly/core/utilts/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Custom_Appbar extends StatelessWidget {
  const Custom_Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            assets_Data.logo,
            height: 120,
            width: 120,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(app_routers.k_Book_search);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
