import 'package:e_course_ui/ui/constant/color_constant.dart';
import 'package:e_course_ui/ui/widget/list_view/best_seller/best_seller_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({super.key});

  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  final List<BestSellerModel> _items = [
    BestSellerModel(
        author: 'By Micjael L. Stickler',
        imageName: 'assets/png/ic_book_whitout_reservation.png',
        title: 'Life Without...',
        price: r'$20.00'),
    BestSellerModel(
        author: 'By Lindsay Eager',
        imageName: 'assets/png/ic_book_patron_thief.png',
        title: 'The Patron...',
        price: r'$30.00'),
    BestSellerModel(
        author: 'By Micjael L. Stickler',
        imageName: 'assets/png/ic_book_whitout_reservation.png',
        title: 'Life Without...',
        price: r'$20.00'),
    BestSellerModel(
        author: 'By Lindsay Eager',
        imageName: 'assets/png/ic_book_patron_thief.png',
        title: 'The Patron...',
        price: r'$30.00'),
  ];

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
            height: context.sized.dynamicHeight(0.18),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              color: ColorConstant.luminary,
              child: Row(
                children: [
                  Image.asset(_items[index].imageName ?? ''),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_items[index].title ?? ''),
                      Text(_items[index].author ?? ''),
                      Text(_items[index].price ?? ''),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
