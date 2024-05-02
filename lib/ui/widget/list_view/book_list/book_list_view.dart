import 'package:e_course_ui/ui/constant/color_constant.dart';
import 'package:e_course_ui/ui/widget/list_view/book_list/book_list_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BookListView extends StatefulWidget {
  const BookListView({super.key});

  @override
  State<BookListView> createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
  final List<BookModel> _items = [
    BookModel(
        imageName: 'assets/png/ic_book_whitout_reservation.png',
        title: 'Life Without...',
        price: r'$20.00'),
    BookModel(
        imageName: 'assets/png/ic_book_patron_thief.png',
        title: 'The Patron...',
        price: r'$30.00'),
    BookModel(
        imageName: 'assets/png/ic_book_whitout_reservation.png',
        title: 'Life Without...',
        price: r'$20.00'),
    BookModel(
        imageName: 'assets/png/ic_book_patron_thief.png',
        title: 'The Patron...',
        price: r'$30.00'),
  ];

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
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              color: ColorConstant.luminary,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(_items[index].imageName ?? ''),
                  ),
                  Text(_items[index].title ?? ''),
                  Text(_items[index].price ?? '')
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
