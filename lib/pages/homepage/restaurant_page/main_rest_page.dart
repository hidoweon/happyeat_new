import 'package:flutter/material.dart';
import 'package:happyeat/pages/homepage/util_page/grid_page.dart';
import 'package:happyeat/utils/dimensions.dart';
import 'package:happyeat/widgets/big_texts.dart';
import 'package:happyeat/widgets/small_texts.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MainRestPage extends StatefulWidget {
  const MainRestPage({Key? key}) : super(key: key);

  @override
  State<MainRestPage> createState() => _MainRestPageState();
}

class _MainRestPageState extends State<MainRestPage> {

  final _restaurants = FirebaseFirestore.instance.collection("restaurant").snapshots();


  String _selectedValue = "가까운 순";
  String _selectedValue2 = "전체 거리";
  String _selectedValue3 = "영업 중";


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),

        //ads
        Container(
          width: double.maxFinite,
          height: 70,
          color: Colors.blue,
        ),
        SizedBox(height: 10,),

        //gridview
        Container(
          height: Dimensions.height10 * 20,
          margin: EdgeInsets.only(left: 10, right: 10),
          child: GridPage(),
        ),
        SizedBox(height: 20,),

        //words on top
        Container(
          child: Text("주변 식당", style: TextStyle(fontSize: 20)),
        ),
        SizedBox(height: 20),

        //dropdown
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              DropdownButton<String>(
                value: _selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                iconSize: 16, // Set the icon size
                isExpanded: false, // Prevent the dropdown from taking up all available space
                underline: Container(), // Remove the underline
                items: <String>['가까운 순', '평점 높은 순', '댓글 많은 순']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(width: 20,),
              DropdownButton<String>(
                value: _selectedValue2,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue2 = newValue!;
                  });
                },
                iconSize: 16, // Set the icon size
                isExpanded: false, // Prevent the dropdown from taking up all available space
                underline: Container(), // Remove the underline
                items: <String>['전체 거리', '5KM', '10KM']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(width: 30,),
              DropdownButton<String>(
                value: _selectedValue3,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue3 = newValue!;
                  });
                },
                iconSize: 16, // Set the icon size
                isExpanded: false, // Prevent the dropdown from taking up all available space
                underline: Container(), // Remove the underline
                items: <String>['영업 중', '영업 종료',]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.red),),
                  );
                }).toList(),
              ),

            ],
          ),
        ),

        //list of restaurants
        StreamBuilder(
            stream: _restaurants,
            builder: (context, snapshot){
              return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];
                    return GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 43),
                              child: Row(
                                children: [
                                  BigText(text: documentSnapshot["name"]),
                                  SizedBox(width: 20,),
                                  SmallText(text: documentSnapshot["kind"])
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.circle, color: Colors.red,),
                                  SizedBox(width: 10,),
                                  Text("영업 중", style: TextStyle(color: Colors.red),),
                                  SizedBox(width: 10,),
                                  SmallText(text: "10KM")
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10, left: 40, right: 10),
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius10*2),
                              ),
                              child: GridView.count(
                                physics: NeverScrollableScrollPhysics(),
                                crossAxisCount: 3,
                                crossAxisSpacing: Dimensions.width10,
                                padding: EdgeInsets.all(Dimensions.height5),
                                shrinkWrap: true,

                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(Dimensions.radius10),
                                        color: Colors.grey
                                    ),
                                    child: Image.network(documentSnapshot["ImageUrl"].toString(),
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            })
      ],
    );
  }
}
