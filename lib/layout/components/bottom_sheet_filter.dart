import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';
import 'package:recipe/layout/components/tab_button.dart';
import 'package:recipe/layout/components/tab_button_filter.dart';

class BottomSheetFilter extends StatefulWidget {
  const BottomSheetFilter({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
                bottom: 12.0,
              ),
              child: Text(
                'Filter Search',
                style: AppTextStyle.smallTextBold,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 24.0,
                top: 12.0,
                bottom: 12.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                'Time',
                style: AppTextStyle.smallTextBold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
              ),
              child: Row(
                children: [
                  TabButtonFilter(
                    selected: true,
                    title: 'All',
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8.0),
                  TabButtonFilter(
                    selected: false,
                    title: 'Newest',
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8.0),
                  TabButtonFilter(
                    selected: true,
                    title: 'Oldest',
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8.0),
                  TabButtonFilter(
                    selected: true,
                    title: 'Popularity',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(
                left: 24.0,
                top: 24.0,
                bottom: 12.0,
              ),
              child: Text(
                'Rate',
                style: AppTextStyle.smallTextBold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
              ),
              child: Row(
                children: [
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Row(
                      children: [
                        Text(
                          '5',
                          style: AppTextStyle.smallTextRegular.copyWith(
                            fontWeight: FontWeight.w500,
                            color: false ? AppColors.white : AppColors.primary80,
                          ),
                        ),
                        const SizedBox(width: 2.0),
                        Icon(
                          Icons.star,
                          color: false ? AppColors.white : AppColors.primary80,
                          size: 18.0,
                        ),
                      ],
                    ),
                    backgroundColor: AppColors.white,
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: AppColors.primary80,
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                  ),
                  SizedBox(width: 8.0),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Row(
                      children: [
                        Text(
                          '4',
                          style: AppTextStyle.smallTextRegular.copyWith(
                            fontWeight: FontWeight.w500,
                            color: false ? AppColors.white : AppColors.primary80,
                          ),
                        ),
                        const SizedBox(width: 2.0),
                        Icon(
                          Icons.star,
                          color: false ? AppColors.white : AppColors.primary80,
                          size: 18.0,
                        ),
                      ],
                    ),
                    backgroundColor: AppColors.white,
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: AppColors.primary80,
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                  ),
                  SizedBox(width: 8.0),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Row(
                      children: [
                        Text(
                          '3',
                          style: AppTextStyle.smallTextRegular.copyWith(
                            fontWeight: FontWeight.w500,
                            color: false ? AppColors.white : AppColors.primary80,
                          ),
                        ),
                        const SizedBox(width: 2.0),
                        Icon(
                          Icons.star,
                          color: false ? AppColors.white : AppColors.primary80,
                          size: 18.0,
                        ),
                      ],
                    ),
                    backgroundColor: AppColors.white,
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: AppColors.primary80,
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                  ),
                  SizedBox(width: 8.0),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Row(
                      children: [
                        Text(
                          '2',
                          style: AppTextStyle.smallTextRegular.copyWith(
                            fontWeight: FontWeight.w500,
                            color: false ? AppColors.white : AppColors.primary80,
                          ),
                        ),
                        const SizedBox(width: 2.0),
                        Icon(
                          Icons.star,
                          color: false ? AppColors.white : AppColors.primary80,
                          size: 18.0,
                        ),
                      ],
                    ),
                    backgroundColor: AppColors.white,
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: AppColors.primary80,
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                  ),
                  SizedBox(width: 8.0),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Row(
                      children: [
                        Text(
                          '1',
                          style: AppTextStyle.smallTextRegular.copyWith(
                            color: false ? AppColors.white : AppColors.primary80,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 2.0),
                        Icon(
                          Icons.star,
                          color: false ? AppColors.white : AppColors.primary80,
                          size: 18.0,
                        ),
                      ],
                    ),
                    backgroundColor: AppColors.white,
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: AppColors.primary80,
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: 24.0,
                top: 12.0,
                bottom: 12.0,
              ),
              child: Text(
                'Category',
                style: AppTextStyle.smallTextBold,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
              ),
              child: Wrap(
                spacing: 4.0,
                children: [
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'All',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'Cereal',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'Vegetables',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'Dinner',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'Chinese',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'Local Dish',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'Fruit',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'Breakfast',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'Spanish',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                  FilterChip(
                    selectedColor: AppColors.primary100,
                    label: Text(
                      'Lunch',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selected: true,
                    onSelected: (value) {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 32.0),
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 64.0,
                    vertical: 12.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: AppColors.primary100,
                  onPressed: () {},
                  child: Text(
                    'Filter',
                    style: AppTextStyle.smallTextBold.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
