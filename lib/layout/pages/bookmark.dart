import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';

class SavedRecipesPage extends StatefulWidget {
  const SavedRecipesPage({super.key});

  @override
  State<SavedRecipesPage> createState() => _SavedRecipesPageState();
}

class _SavedRecipesPageState extends State<SavedRecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: null,
        elevation: 0.0,
        title: Text(
          'Saved recipes',
          style: AppTextStyle.mediumTextBold.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
        ),
        itemCount: 30,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: RecipeView(
            imgUrl:
                'https://s3-alpha-sig.figma.com/img/2234/134e/6e53ef9148ab9085bbd1369e270f0bba?Expires=1668988800&Signature=I2UKq9Db1O2ZZLA8dOJcpXhQf91oQC4RvpjtELGzz6wSkDcQWYjYkayNA7yHjGADcIYDUZfWfN1VUJypQ4Hbt8TKuE9KRmVsrRqyjd~xbaR90xzcPgcjIUfl6cV6rKv6~HpESvptewM0KDVIW46O-W89LOaAncEQKsATG6oSgk5vG2QM-RdbrjLrDTZxyvTUYgM7DwvaYGR4jSvF77TVcfRNlviuQ14CHVpyblFoRcfICJFmqPv-jHYjY1BVYQ2M7etjraCcKQhg3hImwQgwJ23W~4gizDdGD0Iho7I9-rngcbH9fj6KUceoBc7l-vQEbOuFLypXAop1TtSZgLodOw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
            title: 'Traditional spare ribs baked',
            rate: 4.6,
            author: 'Mark Kelvin',
            time: 20,
          ),
        ),
      ),
    );
  }
}

class RecipeView extends StatelessWidget {
  const RecipeView({
    super.key,
    required this.title,
    required this.author,
    required this.time,
    required this.rate,
    required this.imgUrl,
  });

  final double rate;
  final String title;
  final String author;
  final int time;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      width: MediaQuery.of(context).size.width * .8,
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: imgUrl,
            imageBuilder: (context, imageProvider) => Container(
              alignment: Alignment.center,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x66000000),
                    Color(0xff000000),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            right: 10.0,
            bottom: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.0,
                      child: Text(
                        title,
                        style: AppTextStyle.smallTextBold.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    Text(
                      'By $author',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        color: AppColors.grey4,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Iconsax.timer_1,
                      color: AppColors.grey4,
                    ),
                    const SizedBox(width: 4.0),
                    Container(
                      margin: const EdgeInsets.only(top: 4.0),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '$time mins',
                        style: AppTextStyle.smallerTextRegular.copyWith(
                          color: AppColors.grey4,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white,
                        ),
                        child: const Icon(
                          Iconsax.bookmark,
                          size: 16.0,
                          color: AppColors.grey4,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 5.0,
            right: 5.0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 3.0,
              ),
              decoration: BoxDecoration(
                color: AppColors.secondary20,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.star_rate_rounded,
                    size: 16.0,
                    color: AppColors.rating,
                  ),
                  Text(
                    rate.toString(),
                    style: AppTextStyle.smallerTextRegular.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
