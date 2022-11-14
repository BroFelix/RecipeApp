import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';
import 'package:recipe/layout/components/rating_bar.dart';

class NewRecipeCard extends StatelessWidget {
  const NewRecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox.fromSize(
      size: Size(
        size.width * .9,
        size.height * .1,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        fit: StackFit.passthrough,
        children: [
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: SizedBox(
              height: 128.0,
              child: Card(
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Steak with tomato',
                        style: AppTextStyle.normalTextBold.copyWith(
                          color: AppColors.grey1,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const RatingBar(rate: 2.3),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CachedNetworkImage(
                                imageUrl:
                                    'https://s3-alpha-sig.figma.com/img/581a/7d11/67c1cc036aaf74ebd257b46d115c1af3?Expires=1668988800&Signature=AkAr3fYU6qYu80a5O6ytwjciZeRHOBjDCjYHl-fo2~rkQ02gxwan-WTAwGtVf~ami75mXMa37xCNMwTYxifZH4XJrseomoaeu0gPxBnB3SrWbGa4NkgJzvK0S5-cTIKSeDOjWBkrpTHot7wLQLKkLZRxk9E~Yo9aR30QbXpl35H-wyRHjFod0IonbMWWc13ev4Y8SFiKMVUZLiwkVObU5WUDV7LfHia2GAtAfELtSqZEzc2lfCClqH2fpJ5QL1CRxylJ1XwE-5tKs6gI~eMziA8xVzyFra~26uJndjq2GO0p2oqGyxYbcTHqyRJRfkhTqGgnarvJ6FB1~7RxD01OPA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                                height: 32.0,
                                width: 32.0,
                                imageBuilder: (context, imageProvider) => DecoratedBox(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: imageProvider),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              Text(
                                'By James Milner',
                                style: AppTextStyle.smallerTextRegular.copyWith(
                                  color: AppColors.grey3,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Iconsax.timer_1,
                                color: AppColors.grey3,
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                '20 mins',
                                style: AppTextStyle.smallerTextRegular.copyWith(
                                  color: AppColors.grey3,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: CachedNetworkImage(
              imageUrl:
                  'https://s3-alpha-sig.figma.com/img/3c62/fd09/97260dc6201178bf87d345d522de7bdf?Expires=1668988800&Signature=POLodEkrDh7bMmaekKZSaNUlgVchWSVSZ-iNHvLsyjCbubHeoSCzoYwFY0PxnVX6vAIrHFsjRg0ZR00KtcjVM1G55xWiXqj4vjZHouleau~uzTKIw0617U-JmLbwmLASahOdLwUSaoL1sLrkj4vY~dHRmStDfD7G2D4S7qAO0CnerFYxeHdk5FWzVz49PShNLlIdN0X7EH1SPbvsHHQ0VnP2~tJTk8yUk5zDTUhgjOCP948JpvulnAUjuVlfTj1O7JImWupXGmaEbV-Ort9Cfx4frxnXybmqe5JMu5O3gG7CcRUy6BcJzskeLPGGkDKP-LazNmsTUme8kMI0iTz1fw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
              height: 96.0,
              width: 96.0,
              imageBuilder: (context, imageProvider) => DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
