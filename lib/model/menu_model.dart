

class MenuModel{
  final String name;
  final String des;
  final String imageUrl;
  final int price;
  final bool isMain;

  MenuModel({
    required this.name,
    required this.des,
    required this.imageUrl,
    required this.price,
    required this.isMain,
  });

  factory MenuModel.fromMap(Map<String, dynamic> map) {
    return MenuModel(
      name: map['name'] ?? '',
      des: map['des'] ?? '',
      imageUrl: map['ImageUrl'] ?? '',
      price: map['price'] ?? 0,
      isMain: map['main'] ?? false,
    );
  }
}