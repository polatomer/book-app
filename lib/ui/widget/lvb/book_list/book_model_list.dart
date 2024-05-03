import 'package:e_course_ui/ui/constant/string_constant.dart';
import 'package:e_course_ui/ui/widget/lvb/book_list/book_list_model.dart';

class BookModelList {
  final List<BookModel> items = [
    BookModel(
        imageName: StringConstant.firstBookImage,
        title: StringConstant.firstBookTitle,
        price: StringConstant.firstBookPrice),
    BookModel(
        imageName: StringConstant.secondBookImage,
        title: StringConstant.secondBookTitle,
        price: StringConstant.secondBookPrice),
    BookModel(
        imageName: StringConstant.firstBookImage,
        title: StringConstant.firstBookTitle,
        price: StringConstant.firstBookPrice),
    BookModel(
        imageName: StringConstant.secondBookImage,
        title: StringConstant.secondBookTitle,
        price: StringConstant.secondBookPrice),
  ];
}
