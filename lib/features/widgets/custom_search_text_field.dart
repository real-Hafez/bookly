import 'package:flutter/material.dart';

class custom_text_field extends StatelessWidget {
  const custom_text_field({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: bulidoutlineinbutborder(),
          focusedBorder: bulidoutlineinbutborder(),
          hintText: 'search',
          suffixIcon: Opacity(
            opacity: 0.7,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  size: 22,
                )),
          )),
    );
  }

  OutlineInputBorder bulidoutlineinbutborder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}
