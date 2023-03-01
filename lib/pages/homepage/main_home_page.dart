import 'package:flutter/material.dart';
import 'package:happyeat/pages/homepage/main_rest_page.dart';
import 'package:happyeat/pages/homepage/util_page/bottom_bar.dart';
import 'package:happyeat/utils/dimensions.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE7CCC),
        leading: Container(
            margin: EdgeInsets.only(
                left: Dimensions.width10*2, top: Dimensions.height10,
                bottom: Dimensions.height5*2, right: Dimensions.width10),
            child: IconButton(
              icon: Icon(Icons.location_on),
              color: Colors.white,
              onPressed: (){},)
        ),
        title: Row(
          children: [
            Text("동교동 152-13",)
          ],
        ),


      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: MainRestPage(),
            ),
          )
        ],
      ),
    );
  }
}
