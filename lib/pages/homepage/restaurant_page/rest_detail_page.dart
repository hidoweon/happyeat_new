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
                                BigText(text: "호짜", size: 40,),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.circle, color: Colors.red,),
                                      BigText(text: "영업 중", size: 20, color: Colors.red,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SmallText(text: "마지막 업데이트"),
                                SizedBox(width: 15,),
                                SmallText(text: "4시간 전"),
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
                                      Text("주소"),
                                      Expanded(child: SizedBox()),
                                      Text("서울 마포구 동교동 162-13")
                                    ],),
                                  Row(
                                    children: [
                                      Text("영업 시간"),
                                      Expanded(child: SizedBox()),
                                      Text("15:00 - 24:00")
                                    ],),
                                  Row(
                                    children: [
                                      Text("전화번호"),
                                      Expanded(child: SizedBox()),
                                      Text("02-2645-2837")
                                    ],),
                                  Row(
                                    children: [
                                      Text("평균 조리"),
                                      Expanded(child: SizedBox()),
                                      Text("20분")
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
                            Text("대표메뉴"),
                            Text("매장정보"),
                            Text("사진리뷰"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                    //사장님의 한 마디
                    Container(
                      margin: EdgeInsets.only(bottom: 10, left: 15, right: 15, top: 10),
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              BigText(text: "사장님의 한 마디", size: 25, color: Colors.blue,),
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
                                Text("재료 소진으로 인해 뉴오루판은 주문 불가합니다.",
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
                                Text("오늘은 도미가 싱싱합니다!",
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
                          BigText(text: "대표 메뉴")
                        ],
                      ),
                    ),
                    MainMenu(),

                    //all menu
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          BigText(text: "전체 메뉴")
                        ],
                      ),
                    ),
                    AllMenu(),

                  ],
                ),
              ))
        ],
      ),

      //메뉴 담기
      bottomNavigationBar: Container(
        height: 80,
        color: Color(0xffADEBEB),
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.center,
          child: BigText(text: "29,000원 담기", size: 20, color: Colors.white,),
        )
      )
    );
  }
}
