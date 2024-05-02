import 'package:e_course_ui/ui/constant/color_constant.dart';
import 'package:e_course_ui/ui/widget/list_view/categories/category_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  final List<CategoryModel> _items = [
    CategoryModel(title: 'All'),
    CategoryModel(title: 'Thriller'),
    CategoryModel(title: 'Horror'),
    CategoryModel(title: 'History'),
    CategoryModel(title: 'Science'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: context.padding.onlyRightNormal,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                _items[index].title ?? '',
                style: context.general.textTheme.labelLarge
                    ?.copyWith(color: ColorConstant.choppedChive),
              )),
        );
      },
    );
  }
}
