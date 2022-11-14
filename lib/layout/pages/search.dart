import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';
import 'package:recipe/layout/components/bottom_sheet_filter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Iconsax.arrow_left,
            color: AppColors.black,
          ),
        ),
        title: Text(
          'Search',
          style: AppTextStyle.mediumTextBold.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    decoration: InputDecoration(
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
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                      ),
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
          const SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'Recent search',
              style: AppTextStyle.normalTextBold,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => Container(),
            ),
          ),
        ],
      ),
    );
  }
}
