import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;


  static double height5 = screenHeight/ 186.4;
  static double height10 = screenHeight / 93.2;

  static double width5 = screenWidth / 86.4;
  static double width10 = screenWidth / 43.2;

  static double radius5 = screenHeight / 186.4;
  static double radius10 = screenHeight / 93.2;

  static double iconSize24 = screenHeight / 38.83;
  static double iconSize16 = screenHeight / 58.25;

  static double listViewImgSize = screenWidth / 43.2;
  static double listViewTextContSize = screenWidth / 43.2;

  static double font16 = screenHeight / 58.25;
  static double font20 = screenHeight / 46.6;
  static double font26 = screenHeight / 35.85;
}