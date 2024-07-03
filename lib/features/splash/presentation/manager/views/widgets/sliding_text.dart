import 'package:flutter/material.dart';

class sliding_text extends StatelessWidget {
  const sliding_text({
    super.key,
    required this.sliding_anim,
  });

  final Animation<Offset> sliding_anim;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: sliding_anim,
        builder: (context, _) {
          return SlideTransition(
            position: sliding_anim,
            child: const Text(
              'read free books ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          );
        });
  }
}
