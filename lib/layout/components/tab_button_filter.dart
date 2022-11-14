import 'package:flutter/material.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';

class TabButtonFilter extends StatelessWidget {
  const TabButtonFilter({
    super.key,
    required this.selected,
    required this.title,
    required this.onPressed,
  });

  final bool selected;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        decoration: BoxDecoration(
          border: selected
              ? Border.all(
                  color: AppColors.primary80,
                  width: 1.0,
                  style: BorderStyle.none,
                )
              : Border.all(
                  color: AppColors.primary80,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
          borderRadius: BorderRadius.circular(10.0),
          color: selected ? AppColors.primary100 : AppColors.white,
        ),
        child: Text(
          title,
          style: AppTextStyle.smallerTextBold.copyWith(
            color: selected ? Colors.white : AppColors.primary80,
          ),
        ),
      ),
    );
  }
}
