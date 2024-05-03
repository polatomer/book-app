import 'package:e_course_ui/ui/constant/color_constant.dart';
import 'package:e_course_ui/ui/constant/image_enum.dart';
import 'package:e_course_ui/ui/constant/string_constant.dart';
import 'package:e_course_ui/ui/extension/png_extension.dart';
import 'package:e_course_ui/ui/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class GetStartView extends StatelessWidget {
  const GetStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const _ReadingBookImage(),
          const _FirstTitle(),
          const _SecondTitle(),
          Padding(
            padding: context.padding.onlyTopNormal,
            child: const _FirstSubtitle(),
          ),
          const _SecondSubtitle(),
          Padding(
            padding: context.padding.onlyTopNormal,
            child: const _CenterButton(),
          )
        ],
      ),
    );
  }
}

class _CenterButton extends StatelessWidget {
  const _CenterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: context.sized.dynamicWidth(.8),
      height: context.sized.dynamicHeight(.07),
      child: const _StartButton(),
    ));
  }
}

class _ReadingBookImage extends StatelessWidget {
  const _ReadingBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.sized.dynamicHeight(.55),
        child: PngImage(
          name: ImageEnum.reading_book.name,
        ));
  }
}

class _FirstTitle extends StatelessWidget {
  const _FirstTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstant.startFirstTitle,
      style: context.general.textTheme.headlineLarge,
    );
  }
}

class _SecondTitle extends StatelessWidget {
  const _SecondTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstant.startSecondTitle,
      style: context.general.textTheme.headlineLarge,
    );
  }
}

class _FirstSubtitle extends StatelessWidget {
  const _FirstSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstant.startSubtitle,
      style: context.general.textTheme.bodyMedium?.copyWith(color: Colors.grey),
    );
  }
}

class _SecondSubtitle extends StatelessWidget {
  const _SecondSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstant.startSecondSubtitle,
      style: context.general.textTheme.bodyMedium?.copyWith(color: Colors.grey),
    );
  }
}

class _StartButton extends StatelessWidget {
  const _StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _navigateToHomeView(context),
      style: _buttonStyle(),
      child: _buttonTitle(context),
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.choppedChive,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))));
  }

  void _navigateToHomeView(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const HomeView(),
    ));
  }

  Text _buttonTitle(BuildContext context) {
    return Text(
      StringConstant.startButton,
      style:
          context.general.textTheme.titleLarge?.copyWith(color: Colors.white),
    );
  }
}
