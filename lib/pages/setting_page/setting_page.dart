import 'package:flutter/material.dart';
import 'package:happyeat/payment/import/kakaopay.dart';
import 'package:happyeat/utils/dimensions.dart';
import 'package:happyeat/widgets/big_texts.dart';
import 'package:get/get.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE7CCC),
        title: Row(
          children: [
            SizedBox(width: 20),
            Text("설정"),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5
                ))
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Icon(Icons.speaker, size: 30,),
                    SizedBox(width: 20,),
                    BigText(text: "공지사항", size: 25),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5
                  ))
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Icon(Icons.settings, size: 30,),
                    SizedBox(width: 20,),
                    BigText(text: "앱 설정", size: 25),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5
                  ))
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Icon(Icons.live_help, size: 30,),
                    SizedBox(width: 20,),
                    BigText(text: "고객센터", size: 25),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>KaKaoPayment());
              },
              child: Container(
                height: 80,
                width: Dimensions.screenWidth,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.5
                    ))
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month, size: 30,),
                      SizedBox(width: 20,),
                      BigText(text: "약관 및 정책", size: 25),
                      Expanded(child: SizedBox()),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}
