import 'package:flutter/material.dart';

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(//자식위젯을 둥근 모서리로 자르는데 사용
      borderRadius: BorderRadius.circular(20.0), // 코너의 각도 조절
      child: Image.network(
        'https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
