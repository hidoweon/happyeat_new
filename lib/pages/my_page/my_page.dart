import 'package:flutter/material.dart';
import 'package:happyeat/pages/homepage/util_page/bottom_bar.dart';
import 'package:happyeat/widgets/big_texts.dart';
import 'package:get/get.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Mypage"),
          GestureDetector(
            onTap: (){
              Get.to(()=> MyBottomNavigationBar());
            },
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          )
        ],
      )),
    );
  }
}
