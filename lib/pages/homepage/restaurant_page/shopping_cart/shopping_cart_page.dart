import 'package:flutter/material.dart';
import 'package:happyeat/utils/dimensions.dart';
import 'package:happyeat/widgets/big_texts.dart';
import 'package:happyeat/widgets/small_texts.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        toolbarHeight: 50,
        title: BigText(text: "장바구니", color: Colors.white, size: 25,),
      ),
      body: Column(
        children: [
          Container(
            height: 10,
            color: Colors.grey,
          ),
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
            height: 50,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  BigText(text: "맛깔 1987", size: 20,),
                ],
              ),
            )
          ),

          //list of food is shopcart
          ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1, color: Colors.grey))
                      ),
                      child: Row(
                        children: [

                          //음식 사진
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius10),
                                color: Colors.grey
                            ),
                          ),
                          Expanded(child: SizedBox()),

                          //이름, 가격, 수량
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                BigText(text: "모듬 사시미"),
                                SizedBox(height: 15,),
                                Container(
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey, width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.remove, size: 20, color: Colors.grey,),
                                      Text("1"),
                                      Icon(Icons.add, size: 20, color: Colors.grey,)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                SmallText(text: "55,000원", size: 13,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }),

          Container(
            height: 10,
            color: Colors.grey,
          ),

          //결제 금액
          Container(
            height: 120,
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: Column(
                      children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("총 주문금액"),
                          Text("53,500원")
                        ],),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("할인"),
                            Text("1,500원")
                          ],
                        )],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "결제예정금액"),
                      BigText(text: "55,000원")
                    ],
                  )
                ],
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.grey,
        height: 100,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius10),
            color: Colors.blue
          ),
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.add_circle, color: Colors.white,),
                BigText(text: "결제하기", size: 20,),
                BigText(text: "55,000원", size: 13,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
