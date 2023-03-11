import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class RestaurantController extends GetxController{
  final firestore = FirebaseFirestore.instance;

  getData() async{
    var result = await firestore.collection("restaurant").get();

  }
}