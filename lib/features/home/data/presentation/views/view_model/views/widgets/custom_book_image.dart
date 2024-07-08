import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class custom_book_image extends StatelessWidget {
  const custom_book_image({super.key, required this.image_url});
  final String image_url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
            aspectRatio: 2.9 / 4,
            child: CachedNetworkImage(
              imageUrl: image_url,
              fit: BoxFit.fill,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )),
      ),
    );
  }
}
