import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  //필드코너를 약간 각지게 한다
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.black,// 외곽선 컬러 설정
                  ),
                ),
                labelText: '입력하세요',
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text('111');
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
