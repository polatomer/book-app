import 'package:e_course_ui/ui/constant/color_constant.dart';
import 'package:e_course_ui/ui/widget/lvb/book_list/book_list_model.dart';
import 'package:e_course_ui/ui/widget/lvb/book_list/book_model_list.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BookListView extends StatefulWidget {
  const BookListView({super.key});

  @override
  State<BookListView> createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
  late final List _items;
  @override
  void initState() {
    super.initState();
    _items = BookModelList().items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: context.padding.onlyLeftLow,
          child: SizedBox(
            width: context.sized.dynamicWidth(0.6),
            child:
                InkWell(onTap: () {}, child: _ListCard(model: _items[index])),
          ),
        );
      },
    );
  }
}

class _ListCard extends StatelessWidget {
  const _ListCard({
    super.key,
    required BookModel model,
  }) : _model = model;

  final BookModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      color: ColorConstant.luminary,
      child: Column(
        children: [
          Expanded(
            child: _bookImage(),
          ),
          _title(context),
          _priceText(context)
        ],
      ),
    );
  }

  Image _bookImage() => Image.asset(_model.imageName ?? '');

  Text _title(BuildContext context) {
    return Text(
      _model.title ?? '',
      style: context.general.textTheme.headlineSmall
          ?.copyWith(fontWeight: FontWeight.w500),
    );
  }

  Text _priceText(BuildContext context) {
    return Text(
      _model.price ?? '',
      style: context.general.textTheme.headlineSmall
          ?.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
