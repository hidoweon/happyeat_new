import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happyeat/owner_page/bill/bill_waiting.dart';
import 'package:happyeat/owner_page/owner_status_page.dart';
import 'package:happyeat/pages/homepage/main_home_page.dart';
import 'package:happyeat/pages/homepage/restaurant_page/menus/all_menu.dart';
import 'package:happyeat/pages/homepage/restaurant_page/menus/main_menu.dart';
import 'package:happyeat/pages/homepage/restaurant_page/rest_detail_page.dart';
import 'package:happyeat/pages/homepage/restaurant_page/shopping_cart/payment_page.dart';
import 'package:happyeat/pages/homepage/restaurant_page/shopping_cart/shopping_cart_page.dart';
import 'package:happyeat/pages/homepage/util_page/bottom_bar.dart';
import 'package:happyeat/widgets/splash_screen.dart';


import 'firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  KakaoContext.clientId = "네이티브앱키";

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
    );
  }
}

