import 'package:e_course_ui/ui/constant/color_constant.dart';
import 'package:e_course_ui/ui/widget/lvb/categories/category_list.dart';
import 'package:e_course_ui/ui/widget/lvb/categories/category_model.dart';
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
          child: _CategoryButton(
            model: _items[index],
            onPressed: () {
              setState(() {});
            },
          ),
        );
      },
    );
  }
}

class _CategoryButton extends StatelessWidget {
  const _CategoryButton({
    required CategoryModel model,
    required this.onPressed,
  }) : _model = model;

  final CategoryModel _model;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: const StadiumBorder(),
            backgroundColor: Colors.transparent,
            side: BorderSide(color: Colors.grey.withOpacity(.4))),
        onPressed: onPressed,
        child: Text(
          _model.title ?? '',
          style: context.general.textTheme.labelLarge
              ?.copyWith(color: ColorConstant.choppedChive),
        ));
  }
}
