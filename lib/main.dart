import 'package:flutter/material.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/layout/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: AppColors.white,
          iconTheme: IconThemeData(
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.white,
        scaffoldBackgroundColor: AppColors.white,
        primaryColor: AppColors.primary100,
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      home: const SplashPage(),
    );
  }
}
