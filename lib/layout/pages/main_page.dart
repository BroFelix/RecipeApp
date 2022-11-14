import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/layout/pages/bookmark.dart';
import 'package:recipe/layout/pages/home.dart';
import 'package:recipe/layout/pages/notifications.dart';
import 'package:recipe/layout/pages/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          HomePage(),
          SavedRecipesPage(),
          NotificationsPage(),
          ProfilePage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary100,
        onPressed: () {},
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => setState(() => _index = 0),
              icon: _index == 0
                  ? const Icon(
                      Iconsax.home_25,
                      color: AppColors.primary100,
                    )
                  : const Icon(
                      Iconsax.home_2,
                    ),
            ),
            IconButton(
              onPressed: () => setState(() => _index = 1),
              icon: _index == 1
                  ? const Icon(
                      Iconsax.bookmark5,
                      color: AppColors.primary100,
                    )
                  : const Icon(
                      Iconsax.bookmark,
                      color: Colors.black,
                    ),
            ),
            const SizedBox(width: 42.0),
            IconButton(
              onPressed: () => setState(() => _index = 2),
              icon: _index == 2
                  ? const Icon(
                      Iconsax.notification_bing5,
                      color: AppColors.primary100,
                    )
                  : const Icon(Iconsax.notification_bing),
            ),
            IconButton(
              onPressed: () => setState(() => _index = 3),
              icon: _index == 3
                  ? const Icon(
                      Iconsax.profile_circle,
                      color: AppColors.primary100,
                    )
                  : const Icon(
                      Iconsax.user,
                      color: Colors.black,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
