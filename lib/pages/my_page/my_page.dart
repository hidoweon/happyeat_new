import 'package:flutter/material.dart';
import 'package:happyeat/widgets/big_texts.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        title: BigText(text: "로그인", color: Colors.white,),
      ),

      body: Column(
        children: [
          SizedBox(height: 100,),

          //아이디
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: "아이디",
              ),
            ),
          ),
          SizedBox(height: 15,),

          //비밀번호
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: "비밀번호",
              ),
            ),
          ),
          SizedBox(height: 15,),

          //아이디 / 비번 찾기
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BigText(text: "ID / PW 찾기")
              ],
            ),
          ),
          SizedBox(height: 80,),

          //로그인 버튼
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue
            ),
            child: BigText(text: "로그인", color: Colors.white,),
          ),
          SizedBox(height: 15,),

          //회원가입 버튼
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue),
                color: Colors.white
            ),
            child: BigText(text: "회원가입", color: Colors.blue,),
          ),
          SizedBox(height: 15,),

          //stack으로 더 꾸미기 가능, 카카오톡 로그인
          GestureDetector(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Image.asset("images/kakao_login.png"),
            ),
          )


        ],
      ),
    );
  }
}
