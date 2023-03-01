import 'package:flutter/material.dart';
import 'package:happyeat/utils/dimensions.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: Dimensions.width5*4,
      padding: EdgeInsets.all(Dimensions.height5),
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius10),
              color: Color(0xffADEBEB)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("images/prepay.png",),
              ),
              SizedBox(height: 10,),
              Text("사전 결제")
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius10),
              color: Color(0xffADEBEB),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("images/takeout.png",),
              ),
              SizedBox(height: 10,),
              Text("포장")
            ],
          ),
          ),
      ],
    );
  }
}
