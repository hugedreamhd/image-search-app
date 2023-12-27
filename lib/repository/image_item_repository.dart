import 'package:image_search_app/data/model/image_item.dart';

//실제 네트워크 통신 이미지를 가져다 준다
class ImageItemRepository {
  Future<List<ImageItem>> getImageItems(String query) async {
    return [
      ImageItem(
          imageUrl:
              'https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg',
          tags: ''),
      ImageItem(
          imageUrl:
              'https://cdn.pixabay.com/photo/2015/08/13/20/06/flower-887443_150.jpg',
          tags: ''),
      ImageItem(
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434_150.jpg',
          tags: ''),
    ];
  }
}
