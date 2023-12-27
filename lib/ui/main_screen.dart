import 'package:flutter/material.dart';
import 'package:image_search_app/widget/image_item_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    //필드코너를 약간 각지게 한다
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xFF4FB6B2), // 외곽선 컬러 설정
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    //필드코너를 약간 각지게 한다
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.black, // 외곽선 컬러 설정
                    ),
                  ),
                  hintText: '입력하세요',
                  suffixIcon: Icon(Icons.search, color: Color(0xFF4FB6B2),),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ImageItemWidget();
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
