import 'package:e_course_ui/ui/constant/string_constant.dart';
import 'package:e_course_ui/ui/widget/list_view/best_seller/best_seller_model.dart';

class BestSellerList {
  final List<BestSellerModel> items = [
    BestSellerModel(
        author: StringConstant.firstBookAuthor,
        imageName: StringConstant.firstBookImage,
        title: StringConstant.firstBookTitleLong,
        price: StringConstant.firstBookPrice),
    BestSellerModel(
        author: StringConstant.secondBookAuthor,
        imageName: StringConstant.secondBookImage,
        title: StringConstant.secondBookTitleLong,
        price: StringConstant.secondBookPrice),
    BestSellerModel(
        author: StringConstant.firstBookAuthor,
        imageName: StringConstant.firstBookImage,
        title: StringConstant.firstBookTitleLong,
        price: StringConstant.firstBookPrice),
    BestSellerModel(
        author: StringConstant.secondBookAuthor,
        imageName: StringConstant.secondBookImage,
        title: StringConstant.secondBookTitleLong,
        price: StringConstant.secondBookPrice),
  ];
}
