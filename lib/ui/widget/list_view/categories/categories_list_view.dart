import 'package:e_course_ui/ui/constant/color_constant.dart';
import 'package:e_course_ui/ui/widget/list_view/categories/category_list.dart';
import 'package:e_course_ui/ui/widget/list_view/categories/category_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  late final List _items;
  @override
  void initState() {
    super.initState();
    _items = CategoryList().items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: context.padding.onlyRightNormal,
          child: _CategoryButton(model: _items[index]),
        );
      },
    );
  }
}

class _CategoryButton extends StatelessWidget {
  const _CategoryButton({
    required CategoryModel model,
  }) : _model = model;

  final CategoryModel _model;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          _model.title ?? '',
          style: context.general.textTheme.labelLarge
              ?.copyWith(color: ColorConstant.choppedChive),
        ));
  }
}
