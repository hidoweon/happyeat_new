import 'package:flutter/material.dart';

import '../../../../utils/dimensions.dart';
import '../../../../widgets/big_texts.dart';
import '../../../../widgets/small_texts.dart';

class AllMenu extends StatelessWidget {
  const AllMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index){
          return Container(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: Dimensions.screenWidth,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [

                      //음식 사진
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius10),
                            color: Colors.grey
                        ),
                      ),

                      //음식 이름 & 가격
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: "모듬 사시미"),
                            SmallText(text: "계절에 따라 신선한 회가 제공됩니다."),
                            Expanded(child: SizedBox()),

                            //수량 확인
                            Container(
                              width: 180,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BigText(text: "55,000원"),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove),
                                        SizedBox(width: 5,), 
                                        BigText(text: "0"),
                                        SizedBox(width: 5,),
                                        Icon(Icons.add)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
