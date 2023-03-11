import 'package:flutter/material.dart';
import 'package:happyeat/owner_page/when_cancelled.dart';
import 'package:happyeat/widgets/big_texts.dart';
import 'package:happyeat/widgets/small_texts.dart';
import 'package:happyeat/owner_page/list_of_food.dart';


class BillWaiting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: ClipPath(
        child: Container(
          width: double.infinity,
          height: 500.0,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 30,),
                    BigText(text: "9", size: 40,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Icon(Icons.cancel,size: 30,))
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "주문 메뉴 : "),
                    BigText(text: "돼지고기 김치찜  1")
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BigText(text: "삼겹살 카레  2")
                  ],
                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "도착 예정 시간 : "),
                    BigText(text: "6 : 30 PM")
                  ],
                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "인원 수 : "),
                    BigText(text: "3 명")
                  ],
                ),
                SizedBox(height: 30,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BigText(text: "요청 사항 : ")
                  ],
                ),
                SizedBox(height: 40,),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SmallText(text: "창가 자리 남아 있으면 그쪽으로 배치해주세요.", size: 15, color: Colors.blue,),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SmallText(text: "삼겹살 카레 하나는 고수 빼주세요!", size: 15, color: Colors.blue,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40,),

                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.teal
                          ),
                          child: BigText(text: "수락", color: Colors.white,),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => WhenCancel());
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.redAccent
                          ),
                          child: BigText(text: "거절", color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
