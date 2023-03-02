import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happyeat/pages/homepage/main_home_page.dart';
import 'package:happyeat/pages/homepage/restaurant_page/rest_detail_page.dart';
import 'package:happyeat/pages/homepage/restaurant_page/shopping_cart/shopping_cart_page.dart';
import 'package:happyeat/pages/homepage/util_page/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ShoppingCartPage(),
    );
  }
}

