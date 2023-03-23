import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:happyeat/pages/homepage/restaurant_page/rest_detail_page.dart';

import '../model/rest_model.dart';

class RestaurantController extends GetxController{
  final CollectionReference _restaurantsRef =
      FirebaseFirestore.instance.collection('seoul');

  final RxList<RestModel> _restaurants = RxList<RestModel>();

  List<RestModel> get restaurants => _restaurants;

  @override
  void onInit(){
    super.onInit();
  _restaurantsRef.snapshots().listen((snapshot) {
    final restaurants = snapshot.docs.map((doc) => RestModel.fromSnapshot(doc)).toList();
    _restaurants.value = restaurants;
  });
  }

  void goToRestView(String documentId){
    Get.to(()=> RestaurantDetailPage(), arguments: documentId);
  }
}