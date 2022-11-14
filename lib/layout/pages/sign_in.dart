import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipe/res/app_color.dart';
import 'package:recipe/res/app_text_style.dart';
import 'package:recipe/layout/pages/home.dart';
import 'package:recipe/layout/pages/main_page.dart';
import 'package:recipe/layout/pages/sign_up.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 128),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Hello,',
                style: AppTextStyle.headerTextBold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Welcome Back!',
                style: AppTextStyle.largeTextRegular,
              ),
            ),
            const SizedBox(
              height: 64.0,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      height: 32.0,
                    ),
                    Text(
                      'Enter Password',
                      style: AppTextStyle.smallTextRegular,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
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
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: RichText(
                text: TextSpan(
                    text: 'Forgot Password?',
                    style: AppTextStyle.smallerTextRegular.copyWith(
                      color: AppColors.secondary100,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
              ),
            ),
            const SizedBox(
              height: 24.0,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                },
                color: AppColors.primary100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In',
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
            const SizedBox(height: 8.0),
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
            const SizedBox(height: 24.0),
            Align(
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: AppTextStyle.smallerTextRegular.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: AppTextStyle.smallTextRegular.copyWith(
                        color: AppColors.secondary100,
                        fontWeight: FontWeight.w500,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
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
