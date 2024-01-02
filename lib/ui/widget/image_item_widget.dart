import 'package:flutter/material.dart';
import 'package:image_search_app/data_source/model/image_item.dart';

class ImageItemWidget extends StatelessWidget {
  final ImageItem imageItem;

  const ImageItemWidget({
    required this.imageItem,
  });




  @override
  Widget build(BuildContext context) {
    return ClipRRect(//자식위젯을 둥근 모서리로 자르는데 사용
      borderRadius: BorderRadius.circular(20.0), // 코너의 둥근 각도 조절
      child: Image.network(
        imageItem.imageUrl,//이미지 경로
        fit: BoxFit.cover,
      ),
    );
  }

}
