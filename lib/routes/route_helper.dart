import 'package:get/get.dart';

class RouteHelper{
  static const String initial = "/";
  static const String detailRest = "/popular-food";
  static const String recommendedFood = "/recommended-food";

  static String getInitial() => "$initial";
  static String getDetailRest(int pageId) => "$detailRest?pageId=$pageId";

}