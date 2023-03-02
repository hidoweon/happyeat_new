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
          Container(color: Colors.grey, height: 10,),
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
            ),
            child: Row(
              children: [
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
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      BigText(text: "모듬 사시미"),
                      SizedBox(height: 15,),
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.remove, size: 20, color: Colors.grey,),
                            Text("0"),
                            Icon(Icons.add, size: 20, color: Colors.grey,)
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      SmallText(text: "55,000원")
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
