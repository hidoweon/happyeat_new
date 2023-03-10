import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:happyeat/pages/homepage/restaurant_page/menus/all_menu.dart';
import 'package:happyeat/utils/dimensions.dart';
import 'package:happyeat/widgets/big_texts.dart';
import 'package:happyeat/widgets/small_texts.dart';

import 'menus/main_menu.dart';

class RestaurantDetailPage extends StatefulWidget {
  const RestaurantDetailPage({Key? key}) : super(key: key);

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  ScrollController _scrollController = ScrollController();
  bool _showAppBar = true;


  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      setState(() {
        _showAppBar = false;
      });
    } else {
      setState(() {
        _showAppBar = true;
      });
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedBuilder(
            animation: _scrollController,
            builder: (context, child) {
              return AppBar(
                leading: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
                actions: [
                  Icon(Icons.favorite_border_outlined, color: Colors.black, size: 25,),
                  SizedBox(width: 20,),
                  Icon(Icons.home_outlined, color: Colors.black, size: 30,),
                  SizedBox(width: 20,),
                  Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 25,),
                  SizedBox(width: 20,)
                ],

                backgroundColor: Colors.white,
                elevation: _showAppBar ? 4 : 0,
                toolbarHeight: 50,
              );
            },
          ),
          Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    //slides
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 6),
                            )
                          ]
                      ),
                      child: CarouselSlider(
                          items: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/food.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/food2.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                              autoPlay: true,
                              aspectRatio: 16/9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              autoPlayAnimationDuration: Duration(milliseconds: 500),
                              enableInfiniteScroll: true,
                              scrollDirection: Axis.horizontal,
                              enlargeCenterPage: true
                          )
                      ),
                    ),
                    SizedBox(height: 20,),

                    //name & information
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Dimensions.radius10),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BigText(text: "??????", size: 40,),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.circle, color: Colors.red,),
                                      BigText(text: "?????? ???", size: 20, color: Colors.red,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SmallText(text: "????????? ????????????"),
                                SizedBox(width: 15,),
                                SmallText(text: "4?????? ???"),
                                SizedBox(width: 10,),
                                Icon(Icons.refresh, size: 14, color: Colors.grey,)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 110,
                              width: 340,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("??????"),
                                      Expanded(child: SizedBox()),
                                      Text("?????? ????????? ????????? 162-13")
                                    ],),
                                  Row(
                                    children: [
                                      Text("?????? ??????"),
                                      Expanded(child: SizedBox()),
                                      Text("15:00 - 24:00")
                                    ],),
                                  Row(
                                    children: [
                                      Text("????????????"),
                                      Expanded(child: SizedBox()),
                                      Text("02-2645-2837")
                                    ],),
                                  Row(
                                    children: [
                                      Text("?????? ??????"),
                                      Expanded(child: SizedBox()),
                                      Text("20???")
                                    ],),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    //selection bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Dimensions.radius10*2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 6),
                          )
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("????????????"),
                            Text("????????????"),
                            Text("????????????"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                    //???????????? ??? ??????
                    Container(
                      margin: EdgeInsets.only(bottom: 10, left: 15, right: 15, top: 10),
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              BigText(text: "???????????? ??? ??????", size: 25, color: Colors.blue,),
                              SmallText(text: "2023/03/01")
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(),
                            child: Row(
                              children: [
                                Icon(Icons.circle, size: 8,),
                                SizedBox(width: 10,),
                                Text("?????? ???????????? ?????? ??????????????? ?????? ???????????????.",
                                  maxLines: 2,)
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(),
                            child: Row(
                              children: [
                                Icon(Icons.circle, size: 8,),
                                SizedBox(width: 10,),
                                Text("????????? ????????? ???????????????!",
                                  maxLines: 2,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),

                    //main menu
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          BigText(text: "?????? ??????")
                        ],
                      ),
                    ),
                    MainMenu(),

                    //all menu
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          BigText(text: "?????? ??????")
                        ],
                      ),
                    ),
                    AllMenu(),

                  ],
                ),
              ))
        ],
      ),

      //?????? ??????
      bottomNavigationBar: Container(
        height: 80,
        color: Color(0xffADEBEB),
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.center,
          child: BigText(text: "29,000??? ??????", size: 20, color: Colors.white,),
        )
      )
    );
  }
}
