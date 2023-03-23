import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happyeat/controller/restaurant_controller.dart';
import 'package:happyeat/login/kakao_login/view.dart';
import 'package:happyeat/login/login.dart';
import 'package:happyeat/owner_page/bill/bill_waiting.dart';
import 'package:happyeat/owner_page/owner_status_page.dart';
import 'package:happyeat/pages/homepage/main_home_page.dart';
import 'package:happyeat/pages/homepage/restaurant_page/menus/all_menu.dart';
import 'package:happyeat/pages/homepage/restaurant_page/menus/main_menu.dart';
import 'package:happyeat/pages/homepage/restaurant_page/rest_detail_page.dart';
import 'package:happyeat/pages/homepage/restaurant_page/shopping_cart/payment_page.dart';
import 'package:happyeat/pages/homepage/restaurant_page/shopping_cart/shopping_cart_page.dart';
import 'package:happyeat/pages/homepage/util_page/bottom_bar.dart';
import 'package:happyeat/pages/my_page/my_page.dart';
import 'package:happyeat/payment/import/kakaopay.dart';
import 'package:happyeat/widgets/splash_screen.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;


import 'firebase_options.dart';

void main() async {
  kakao.KakaoSdk.init(nativeAppKey: 'b854aa632b04b84730c1903ccfbc0b20');

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(RestaurantController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Center(
          child: ElevatedButton(child: Text('click'),
          onPressed: (){
            Get.find<RestaurantController>().goToRestView('호짜');
          },
          ),
        )
      )

    );
  }
}

