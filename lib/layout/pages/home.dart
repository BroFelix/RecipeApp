import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe/res/app_text_style.dart';
import 'package:recipe/layout/components/bottom_sheet_filter.dart';
import 'package:recipe/layout/components/new_recipe_card.dart';
import 'package:recipe/layout/components/recipe_card.dart';
import 'package:recipe/layout/components/tab_button.dart';
import 'package:recipe/layout/pages/recipe_view.dart';
import 'package:recipe/layout/pages/search.dart';

import '../../res/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 84.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Jega',
                      style: AppTextStyle.largeTextBold,
                    ),
                    Text(
                      'What are you cooking today?',
                      style: AppTextStyle.smallerTextRegular,
                    ),
                  ],
                ),
                Container(
                  height: 54.0,
                  width: 54.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: AppColors.secondary40,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/c492/e0dc/4e79c0324e16a6e05cb4555a0dd25e28?Expires=1668384000&Signature=Qj7lo1lmfZ86AdbyWTI72z4pXNRronWKd-tEjcxr90Pdozml6mAnl7H1AHcOkcrE9GtxvaYUGz7vIHAwSvuOY~Gm7WTBt8jvJ73IA4YK4qenZeH5h0ujg5R0No1FZ1SFucF8ZLA9MmycYbQM4LEtp9d-In4fEdw98EWZSF8zrouUraGVGZbg2G9NrvYM4BovoIJ~OaDiB53Phxg9UF4-c3Dc9NlJDNMggzeoLPpRdt2QAm4O8Ar02i0lcIlSC9GUrsjoou-vqwiIG~pPR3KC~pngfSMFpsHWY5dcP3ITwQF1p~Xk8rx-G-cGLfLajdlE2yT89WWmW6a8Mi5B2boP6Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LimitedBox(
                  maxWidth: MediaQuery.of(context).size.width * .69,
                  child: TextField(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SearchPage(),
                        ),
                      );
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Iconsax.search_normal_1,
                        color: AppColors.grey4,
                      ),
                      prefixIconColor: AppColors.grey4,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColors.grey4),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 62.0,
                  minWidth: 62.0,
                  color: AppColors.primary100,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                      ),
                      context: context,
                      builder: (context) => BottomSheetFilter(
                        height: size.height * .55,
                        width: size.width,
                      ),
                    );
                  },
                  child: const Icon(
                    Iconsax.setting_4,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              top: 12.0,
            ),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TabButton(
                  title: 'All',
                  selected: true,
                  onPressed: () {},
                ),
                const SizedBox(width: 8.0),
                TabButton(
                  title: 'Indian',
                  selected: false,
                  onPressed: () {},
                ),
                const SizedBox(width: 8.0),
                TabButton(
                  title: 'Italian',
                  selected: false,
                  onPressed: () {},
                ),
                const SizedBox(width: 8.0),
                TabButton(
                  title: 'Asian',
                  selected: false,
                  onPressed: () {},
                ),
                const SizedBox(width: 8.0),
                TabButton(
                  title: 'Chinese',
                  selected: false,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 280.0,
              minHeight: 0.0,
              maxWidth: MediaQuery.of(context).size.width,
              minWidth: 0.0,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              itemCount: 3,
              itemBuilder: (context, index) => InkWell(
                onTap: (() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return RecipeView();
                  }));
                }),
                child: const RecipeCard(
                  imageUrl:
                      'https://s3-alpha-sig.figma.com/img/6d76/9d15/36bd89900daf1d31e299baba4eb26aa0?Expires=1668988800&Signature=R9ZKKqswyB1SbtA2I5KOXMVwhuJ5r2gyxm9-OIwGwFmPqB~cPGeSZhvWMVC92tN9UyMdSKjhvAYRUk830tOpH56SZk6ViJ6uJzcu-QF5YnWBGW48A~gbB3Aim5Idiwl1~lfci9uFviCln72a8pBzn535BAN1o0wJesY5Rf-oxSVIYG8w04JXSgvrFi7swQ8tmUJwl9czwjvC74DL6LOBR7yNN6sJebwYeLyU5YvJ-mVPYTS2w4NDrVzjeY-WEEVWdxy6IbU2doexMEDc5IvxtG2R4yYlgbBbozxmqmSfGndAsJHekfAEdr8B8H0n5WIxYKB4p90vY-6kQLWE0IcC0w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                  rate: 4.5,
                  time: 10,
                  title: 'Classic Greek Salad',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
            ),
            child: Text(
              'New recipes',
              style: AppTextStyle.normalTextBold,
            ),
          ),
          const SizedBox(height: 8.0),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: size.height * .05,
              maxHeight: size.height * .2,
              minWidth: size.width * .01,
              maxWidth: size.width,
            ),
            child: ListView.builder(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
              ),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => 0 < index && index < 3
                  ? const Padding(
                      padding: EdgeInsets.only(
                        left: 12.0,
                        right: 12.0,
                      ),
                      child: NewRecipeCard(),
                    )
                  : const NewRecipeCard(),
            ),
          ),
        ],
      ),
    );
  }
}
