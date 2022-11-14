import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final int time;
  final double rate;
  final String imageUrl;

  const RecipeCard({
    super.key,
    required this.title,
    required this.time,
    required this.rate,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      width: 200.0,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 40,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                bottom: 24.0,
              ),
              height: 220.0,
              width: 180.0,
              decoration: BoxDecoration(
                color: AppColors.grey4.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.smallTextBold.copyWith(
                      color: AppColors.grey1,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Time',
                            style: AppTextStyle.smallerTextRegular.copyWith(
                              color: AppColors.grey3,
                            ),
                          ),
                          Text(
                            '$time mins',
                            style: AppTextStyle.smallerTextBold.copyWith(
                              color: AppColors.grey1,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.bookmark),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: 128.0,
              width: 128.0,
              imageBuilder: (context, imageProvider) => Container(
                height: 128.0,
                width: 128.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
