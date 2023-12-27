import 'package:flutter/material.dart';

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://pixabay.com/photos/rose-flower-petal-floral-noble-3063284',
      fit: BoxFit.cover,
    );
  }
}
