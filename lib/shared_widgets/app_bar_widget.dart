import 'package:flutter/material.dart';
import 'package:reciperlich/constants/colors.dart';
import 'package:reciperlich/shared_widgets/image_with_top_shadow_widget.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool centerTitle;

  const AppBarWidget({
    Key? key,
    required this.text,
    required this.imagePath,
    this.centerTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: AppColors.navy,
      centerTitle: centerTitle,
      expandedHeight:
          200.0, // By setting the value here, you make the app bar scrollable.
      pinned:
          true, // When you set pinned to true, you let the app bar remain visible at the start of the scroll view.
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: ImageWithTopShadowWidget(imagePath),
      ),
      floating:
          false, // By setting it to true, you make the app bar visible as soon as the user scrolls towards the app bar.
      snap:
          false, // When true, the app bar will fully expand as you scroll, which is helpful when you have a text field in the app bar.
    );
  }
}
