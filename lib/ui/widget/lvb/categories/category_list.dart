import 'package:e_course_ui/ui/constant/categories_enum.dart';
import 'package:e_course_ui/ui/widget/lvb/categories/category_model.dart';

class CategoryList {
  final List<CategoryModel> items = [
    CategoryModel(title: CategoriesEnum.All.name),
    CategoryModel(title: CategoriesEnum.Thriller.name),
    CategoryModel(title: CategoriesEnum.Horror.name),
    CategoryModel(title: CategoriesEnum.History.name),
    CategoryModel(title: CategoriesEnum.Science.name),
  ];
}
