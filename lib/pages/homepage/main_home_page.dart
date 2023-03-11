import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:happyeat/pages/homepage/restaurant_page/main_rest_page.dart';
import 'package:happyeat/pages/homepage/util_page/bottom_bar.dart';
import 'package:happyeat/utils/dimensions.dart';


class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

  final _restaurants = FirebaseFirestore.instance.collection("restaurant").snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE7CCC),
        leading: Container(
            margin: EdgeInsets.only(
                left: Dimensions.width10*2, top: Dimensions.height10,
                bottom: Dimensions.height5*2, right: Dimensions.width10),
            child: GestureDetector(
              onTap: (){

              },
              child: Icon(Icons.location_on),)
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
