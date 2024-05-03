class BookModel {
  String? title;
  String? imageName;
  String? price;

  BookModel({this.title, this.imageName, this.price});

  BookModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    imageName = json['imageName'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['imageName'] = imageName;
    data['price'] = price;
    return data;
  }
}
