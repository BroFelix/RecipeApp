import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          onPressed: () {},
        ),
        title: Text(
          'Notifications',
          style: AppTextStyle.mediumTextBold.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 8.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.primary100,
                ),
                child: Text(
                  'All',
                  style: AppTextStyle.smallTextBold.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 8.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.primary100,
                ),
                child: Text(
                  'Read',
                  style: AppTextStyle.smallTextBold.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 8.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.primary100,
                ),
                child: Text(
                  'Unread',
                  style: AppTextStyle.smallTextBold.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * .7,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
