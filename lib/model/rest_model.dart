class RestModel{
  int? id;
  String? name;
  int? typeId;
  bool? open;
  String? img;
  int? distance;

  RestModel({
    this.id,
    this.name,
    this.typeId,
    this.open,
    this.img,
    this.distance
  });

  RestModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    typeId = json['typeId'];
    open = json['open'];
    img = json['img'];
    distance = json['distance'];

  }
}
