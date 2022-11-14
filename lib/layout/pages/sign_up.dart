import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';
import 'package:recipe/layout/pages/home.dart';
import 'package:recipe/layout/pages/main_page.dart';
import 'package:recipe/layout/pages/sign_in.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? _condition = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 64.0),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Create an account',
                style: AppTextStyle.largeTextBold,
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Let’s help you set up your account,\nit won’t take long.',
                style: AppTextStyle.smallerTextRegular,
              ),
            ),
            const SizedBox(height: 36.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: AppTextStyle.smallTextRegular,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      'Email',
                      style: AppTextStyle.smallTextRegular,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      'Password',
                      style: AppTextStyle.smallTextRegular,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      'Confirm Password',
                      style: AppTextStyle.smallTextRegular,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    fillColor: const MaterialStatePropertyAll(AppColors.secondary100),
                    value: _condition,
                    onChanged: (value) {
                      setState(() {
                        _condition = value;
                      });
                    },
                  ),
                  Text(
                    'Accept terms & Condition',
                    style: AppTextStyle.smallerTextRegular.copyWith(
                      color: AppColors.secondary100,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: MaterialButton(
                height: 64.0,
                minWidth: MediaQuery.of(context).size.width,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                },
                color: AppColors.primary100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: AppTextStyle.normalTextBold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 32.0,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 64.0,
                  child: Divider(
                    thickness: 2.0,
                    color: AppColors.grey4,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Or Sign in With',
                    style: AppTextStyle.smallerTextRegular.copyWith(
                      color: AppColors.grey4,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                const SizedBox(
                  width: 64,
                  child: Divider(
                    thickness: 2.0,
                    color: AppColors.grey4,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: MaterialButton(
                    height: 64.0,
                    minWidth: 64.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(12),
                    elevation: 4.0,
                    onPressed: () {},
                    child: Image.asset(
                      'assets/google.png',
                      height: 32.0,
                      width: 32.0,
                    ),
                  ),
                ),
                const SizedBox(width: 12.0),
                Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: MaterialButton(
                    height: 64.0,
                    minWidth: 64.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    elevation: 4.0,
                    onPressed: () {},
                    child: Image.asset(
                      'assets/facebook.png',
                      height: 32.0,
                      width: 32.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Align(
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Already a member? ',
                  style: AppTextStyle.smallerTextRegular.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign in',
                      style: AppTextStyle.smallerTextRegular.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.secondary100,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
