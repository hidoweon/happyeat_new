import 'package:cloud_firestore/cloud_firestore.dart';

import 'menu_model.dart';


class RestModel{
  final String name;
  final String kind;
  final String resdes;
  final String imageUrl1;
  final String address;
  final Map<String, String> hours;
  final List<MenuModel> menu;

  RestModel({
    required this.name,
    required this.kind,
    required this.resdes,
    required this.imageUrl1,
    required this.address,
    required this.hours,
    required this.menu,
  });

  factory RestModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final menu = (data['menu'] as Map<String, dynamic>)
        .values
        .map((e) => MenuModel.fromMap(e))
        .toList();

    return RestModel(
      name: data['name'],
      kind: data['kind'],
      resdes: data['resdes'],
      imageUrl1: data['imageUrl1'],
      address: data['address'],
      hours: Map<String, String>.from(data['hours']),
      menu: menu,
    );

  }
}
