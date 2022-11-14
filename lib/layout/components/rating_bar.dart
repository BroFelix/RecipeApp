import 'package:flutter/material.dart';
import 'package:recipe/res/app_color.dart';

class RatingBar extends StatelessWidget {
  final double rate;

  const RatingBar({super.key, required this.rate});

  List<Widget> builRate() {
    List<Widget> children = [];
    for (int i = 0; i < rate; i++) {
      children.add(const Icon(
        Icons.star_rounded,
        color: AppColors.rating,
      ));
    }
    if (rate - rate.toInt() > 0) {
      children.removeLast();
      children.add(const Icon(
        Icons.star_half_rounded,
        color: AppColors.rating,
      ));
    }
    for (int i = 0; i < 5 - rate - 1; i++) {
      children.add(const Icon(
        Icons.star_outline_rounded,
        color: AppColors.rating,
      ));
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: builRate(),
    );
  }
}
