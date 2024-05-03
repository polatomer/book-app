class BestSellerModel {
  String? title;
  String? author;
  String? imageName;
  String? price;

  BestSellerModel({this.title, this.author, this.imageName, this.price});

  BestSellerModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    author = json['author'];
    imageName = json['imageName'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['author'] = author;
    data['imageName'] = imageName;
    data['price'] = price;
    return data;
  }
}
