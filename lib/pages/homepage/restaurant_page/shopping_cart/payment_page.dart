import 'package:flutter/material.dart';
import 'package:happyeat/widgets/small_texts.dart';

import '../../../../widgets/big_texts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        toolbarHeight: 50,
        title: BigText(text: "결제하기", color: Colors.white, size: 25,),
      ),
      body: Column(
        children: [
          //평균 조리 시간
          Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
              height: 50,
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "평균 조리 시간", size: 15,),
                    Row(
                      children: [
                        Icon(Icons.access_time, size: 15,),
                        SizedBox(width: 5,),
                        SmallText(text: "20~30분 소요")
                      ],
                    )

                  ],
                ),
              )
          ),

          //찾아오는 길
          Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
              height: 130,
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 20, top: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        BigText(text: "찾아오는 길"),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(text: "가게 명"),
                              BigText(text: "맛깔 1987")
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(text: "주소"),
                              BigText(text: "마포구 동교동 152-13"),
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              BigText(text: "홍대입구역 3번출구에서 5분 거리", size: 15,)
                            ],)
                        ],
                      ),
                    )
                  ],
                )
              )
          ),

          //전화번호
          Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
              height: 50,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    BigText(text: "010 - 9566 - 8833")
                  ],
                ),
              )
          )

        ],
      ),
    );
  }
}
