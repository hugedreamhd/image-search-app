import 'package:flutter/material.dart';
import 'package:image_search_app/data_source/model/image_item.dart';
import 'package:image_search_app/repository/image_item_repository.dart';
import 'package:image_search_app/ui/main_view_model.dart';
import 'package:image_search_app/ui/widget/image_item_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final searchTextEditingController = TextEditingController();

  final viewModel = MainViewModel(); //Mock데이터 대신
  //
  // List<ImageItem> imageItems = [];
  // bool isLoading = true;
  //
  // Future<void> searchImage(String query) async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //
  //   imageItems = await repository.getImageItems(query);
  //   //강제 UI 업데이트
  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  @override
  void dispose() {
    searchTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                controller: searchTextEditingController,
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
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Color(0xFF4FB6B2),
                    ),
                    onPressed: () async {
                      setState(() {
                        viewModel.isLoading = true;
                      });

                      await viewModel
                          .searchImage(searchTextEditingController.text);

                      setState(() {
                        viewModel.isLoading = false;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 24),
              viewModel.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: GridView.builder(
                        itemCount: viewModel.imageItems.length,
                        itemBuilder: (context, index) {
                          final imageItem = viewModel.imageItems[index];
                          return ImageItemWidget(
                            imageItem: imageItem,
                          );
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 32,
                          mainAxisSpacing: 32,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
