import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';
import 'package:recipe/layout/pages/sign_in.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x66000000),
                  Color(0xff000000),
                ],
              ),
            ),
            height: size.height,
            width: size.width,
            child: Image.asset(
              'assets/splash.jpg',
              fit: BoxFit.fitHeight,
              scale: 3.0,
            ),
          ),
          Positioned(
            top: 128.0,
            child: Column(
              children: [
                Image.asset('assets/logo.png'),
                const SizedBox(height: 16.0),
                Text(
                  '100K+ Premium Recipe',
                  style: AppTextStyle.mediumTextBold.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 72.0,
            child: Column(
              children: [
                Text(
                  'Get\nCooking',
                  style: AppTextStyle.titleTextBold.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  'Simple way to find Tasty Recipe',
                  style: AppTextStyle.normalTextRegular.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 48,
                ),
                MaterialButton(
                  height: 64.0,
                  minWidth: MediaQuery.of(context).size.width * 0.65,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: AppColors.primary100,
                  child: Row(
                    children: [
                      Text(
                        'Start Cooking',
                        style: AppTextStyle.normalTextBold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 18.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInPage()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
