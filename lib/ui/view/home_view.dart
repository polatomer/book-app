import 'package:e_course_ui/ui/constant/color_constant.dart';
import 'package:e_course_ui/ui/constant/string_constant.dart';
import 'package:e_course_ui/ui/widget/lvb/best_seller/best_seller_list_view.dart';
import 'package:e_course_ui/ui/widget/lvb/book_list/book_list_view.dart';
import 'package:e_course_ui/ui/widget/lvb/categories/categories_list_view.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: Image.asset('assets/png/ic_menu.png')),
        actions: [Image.asset('assets/png/ic_avatar.png')],
      ),
      body: Padding(
        padding: context.padding.horizontalNormal,
        child: Column(
          children: [
            Expanded(
              child: ListView(scrollDirection: Axis.vertical, children: [
                Padding(
                  padding: context.padding.onlyTopNormal,
                  child: _bodyLargeTitle(context),
                ),
                _secondBodyTitle(context),
                Padding(
                  padding: context.padding.onlyTopMedium,
                  child: Row(
                    children: [
                      Expanded(child: _searchTextField()),
                      Padding(
                        padding: context.padding.onlyLeftLow,
                        child: const _FilterContainer(),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: context.padding.onlyTopMedium,
                  child: SizedBox(
                      height: context.sized.dynamicHeight(.05),
                      child: const CategoriesListView()),
                ),
                Padding(
                  padding: context.padding.onlyTopMedium,
                  child: SizedBox(
                    height: context.sized.dynamicHeight(.3),
                    child: const BookListView(),
                  ),
                ),
                Padding(
                  padding: context.padding.onlyTopLow,
                  child: const _BestSellerRow(),
                ),
                const BestSellerListView()
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Row _bodyLargeTitle(BuildContext context) {
    return Row(
      children: [
        _bodyTitleGreen(context),
        _bodyTitle(context),
      ],
    );
  }

  Text _bodyTitleGreen(BuildContext context) {
    return Text(
      StringConstant.bodyTitleGreen,
      style: context.general.textTheme.headlineMedium
          ?.copyWith(color: ColorConstant.choppedChive),
    );
  }

  Text _bodyTitle(BuildContext context) {
    return Text(
      StringConstant.bodyTitle,
      style: context.general.textTheme.headlineMedium,
    );
  }

  Text _secondBodyTitle(BuildContext context) {
    return Text(
      StringConstant.secondBodyTitle,
      style: context.general.textTheme.headlineMedium,
    );
  }

  TextField _searchTextField() {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: StringConstant.hintTextField,
      ),
    );
  }
}

class _FilterContainer extends StatelessWidget {
  const _FilterContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.sized.dynamicHeight(0.075),
      width: context.sized.dynamicWidth(.15),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: ColorConstant.choppedChive),
      child: const _FilterButton(),
    );
  }
}

class _FilterButton extends StatelessWidget {
  const _FilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: _filterButtonBox(context));
  }

  SizedBox _filterButtonBox(BuildContext context) {
    return SizedBox(
        height: context.sized.dynamicHeight(.035),
        child: Image.asset(
          'assets/png/ic_filter.png',
          color: Colors.white,
        ));
  }
}

class _BestSellerRow extends StatelessWidget {
  const _BestSellerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_bestSellers(context), _seeAllBestSellers(context)],
    );
  }

  Text _bestSellers(BuildContext context) {
    return Text(
      StringConstant.bestSellersTitle,
      style: context.general.textTheme.titleLarge,
    );
  }

  TextButton _seeAllBestSellers(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          StringConstant.showBestSellers,
          style: context.general.textTheme.titleSmall
              ?.copyWith(color: ColorConstant.choppedChive),
        ));
  }
}
