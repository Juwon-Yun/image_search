import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_image_app/data/photo_provider.dart';
import 'package:search_image_app/models/photo.dart';
import 'package:search_image_app/ui/main_view_model.dart';
import 'package:search_image_app/ui/widget/photo_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _controller = TextEditingController();

  // MainScreen은 PixabayApi 의존성을 가지고 있는 화면이다.
  // 분리해줘야함.
  // 인스턴스 생성을 내부에서 하는것은 지양한다.
  // 외부에서 생성해서 받아서 사용하는 형태로 수정한다.
  // final api = PixabayApi();

  // 의존성 분리
  // 1. 의존성 모듈을 인자로 받는다 -> 분리는 되지만 좋은방법은 아니다.
  // 2. InheritedWidget으로 의존성을 주입한다.

  // 불변객체를 Stream을 이용해 제거한다.
  // List<Photo> _photos = [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final mainViewModel = PhotoProvider.of(context).mainViewModel;

    // api가 Stream으로 제공되기때문에 watch를 사용해도 똑같이 나온다.
    // final mainViewModel = Provider.of<MainViewModel>(context);
    final mainViewModel = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '이미지 검색',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: IconButton(
                  onPressed: () async {
                    mainViewModel.fetch(_controller.text);

                    // final photos = await photoProvider.api
                    //     .fetchImageWithQuery(_controller.text);
                    // setState(() {
                    //   _photos = photos;
                    // });
                  },
                  icon: Icon(CupertinoIcons.search),
                ),
              ),
            ),
          ),
          StreamBuilder<List<Photo>>(
              stream: mainViewModel.photoStream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }

                final _photos = snapshot.data!;

                return Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(16),
                    itemCount: _photos.length,
                    // shrinkWrap: true를 쓸지 Expanded를 쓸지 선택
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16),
                    itemBuilder: (context, index) {
                      return PhotoWidget(
                        photo: _photos[index],
                      );
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}
