import 'package:flutter/material.dart';
import 'package:happyeat/widgets/big_texts.dart';

class WhenCancel extends StatelessWidget {
  const WhenCancel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 40),
        child: Column(
          children: [
            BigText(text: '주문 취소 사유', size: 25,),
            SizedBox(height: 40,),
            Expanded(
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(text: "주문 지연")
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(text: "재료 품절")
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(text: "만석")
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context){
                            return AlertDialog(
                              content: TextField(),
                            );
                          });
                    },
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(text: "직접 입력")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );


  }
}
