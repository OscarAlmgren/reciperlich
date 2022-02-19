import 'package:flutter/material.dart';
import 'package:reciperlich/constants/colors.dart';
import 'package:reciperlich/shared_widgets/image_with_top_shadow_widget.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool centerTitle;
  final double extendedHeightInput;

  const AppBarWidget({
    Key? key,
    required this.text,
    required this.imagePath,
    this.centerTitle = false,
    required this.extendedHeightInput,
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
      // By setting the value expandedHeight here, you make the app bar scrollable.
      expandedHeight: extendedHeightInput,
      // https://api.flutter.dev/flutter/material/SliverAppBar-class.html
      pinned: true,
      snap: false,
      floating: false,
      elevation: 1,
      flexibleSpace: FlexibleSpaceBar(
        // title: const Text('Flexible space bar title'),
        background: ImageWithTopShadowWidget(imagePath),
      ),
    );
  }
}
