import 'package:e_course_ui/ui/constant/color_constant.dart';
import 'package:e_course_ui/ui/widget/lvb/best_seller/best_seller_list.dart';
import 'package:e_course_ui/ui/widget/lvb/best_seller/best_seller_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({super.key});

  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  late final List _items;
  @override
  void initState() {
    super.initState();
    _items = BestSellerList().items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: context.padding.onlyTopLow,
          child: SizedBox(
            height: context.sized.dynamicHeight(0.15),
            child: _ListCard(model: _items[index]),
          ),
        );
      },
    );
  }
}

class _ListCard extends StatelessWidget {
  const _ListCard({
    super.key,
    required BestSellerModel model,
  }) : _model = model;

  final BestSellerModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      color: ColorConstant.luminary,
      child: Row(
        children: [
          Padding(
            padding: context.padding.onlyLeftNormal,
            child: Image.asset(_model.imageName ?? ''),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _title(context),
              _authorText(context),
              _priceText(context),
            ],
          )
        ],
      ),
    );
  }

  Text _authorText(BuildContext context) {
    return Text(
      _model.author ?? '',
    );
  }

  Text _title(BuildContext context) {
    return Text(
      _model.title ?? '',
      style: context.general.textTheme.titleMedium,
    );
  }

  Text _priceText(BuildContext context) {
    return Text(
      _model.price ?? '',
      style: context.general.textTheme.titleLarge
          ?.copyWith(fontWeight: FontWeight.w800),
    );
  }
}
