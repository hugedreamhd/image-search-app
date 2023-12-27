import 'dart:convert';

import 'package:image_search_app/dto/pixabay_dto.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  Future<PixabayDto> getImagesResult(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=41486583-a8bebcb5b3331340ec13d3579&q=$query&image_type=photo&pretty=true')); //pretty=true  이쁘게 보이게 하는것
    return PixabayDto.fromJson(jsonDecode/*utf8.decode*/(response.body));//utf8.decode 한글깨짐방지
  }
}
