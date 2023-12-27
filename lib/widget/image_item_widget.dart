import 'package:flutter/material.dart';

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg',
      fit: BoxFit.cover,
    );
  }
}
