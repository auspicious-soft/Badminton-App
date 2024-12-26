import 'package:badminton/Pages/Dashboard/pg_dasboard.dart';
import 'package:badminton/Pages/ForgotPassword/pg_forgot_password.dart';
import 'package:badminton/Pages/SignUp/pg_signup.dart';
import 'package:badminton/app_settings/components/common_textfield.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_const.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:badminton/app_settings/constants/common_button.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

class PgSignin extends StatefulWidget {
  const PgSignin({super.key});

  @override
  State<PgSignin> createState() => _PgSigninState();
}

class _PgSigninState extends State<PgSignin> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: WidgetGlobalMargin(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          padVertical(50),
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              AppAssets.logo,
                              fit: BoxFit.contain,
                              width: 34,
                              height: 34,
                            ),
                          ),
                          padVertical(20),
                          const Label(
                            txt: "Sign in to your",
                            type: TextTypes.f_30_700,
                          ),
                          const Label(
                            txt: "Account",
                            type: TextTypes.f_30_700,
                          ),
                          const Label(
                            txt: "Enter your email and password",
                            type: TextTypes.f_14_400,
                            forceColor: AppColors.smalltxt,
                          ),
                          padVertical(40),

                          commonTxtField(hTxt: "Email Address"),
                          padVertical(15),
                          // Password Input
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        color: AppColors.smalltxt,
                                        fontFamily: AppConst.fontFamily,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontFamily: AppConst.fontFamily,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    keyboardType: TextInputType.text,
                                    obscureText: true,
                                  ),
                                ),
                                Icon(
                                  Icons.visibility_off_outlined,
                                  color: AppColors.eye,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          padVertical(20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                const Icon(
                                  Icons.check_box_outline_blank_outlined,
                                  color: AppColors.grey,
                                  size: 19,
                                ),
                                padHorizontal(5),
                                const Label(
                                  txt: "Remember me",
                                  type: TextTypes.f_12_400,
                                  forceColor: AppColors.smalltxt,
                                )
                              ]),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const PgForgotPassword(),
                                          ));
                                    },
                                  text: 'Forgot Password?',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppConst.fontFamily,
                                    color: AppColors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          padVertical(20),

                          SizedBox(
                            width: double.infinity,
                            child: commonButton(
                              txt: "Log In",
                              context: context,
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PgDashBoard(),
                                  ),
                                )
                              },
                            ),
                          ),
                          padVertical(20),
                          const Align(
                            alignment: Alignment.center,
                            child: Label(
                              txt: "-   Or   -",
                              type: TextTypes.f_14_400,
                              forceColor: AppColors.smalltxt,
                            ),
                          ),
                          padVertical(20),

                          Container(
                            height: 56,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 17,
                                  width: 17,
                                  child: Image.asset(
                                    AppAssets.google,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                padHorizontal(10),
                                const Label(
                                  txt: "Continue with Google",
                                  type: TextTypes.f_12_500,
                                  forceColor: AppColors.blackColor,
                                ),
                              ],
                            ),
                          ),
                          padVertical(20),

                          Container(
                            height: 56,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 17,
                                  width: 17,
                                  child: Image.asset(
                                    AppAssets.facebook,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                padHorizontal(10),
                                const Label(
                                  txt: "Continue with Facebook",
                                  type: TextTypes.f_12_500,
                                  forceColor: AppColors.blackColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Don’t have an account?',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppConst.fontFamily,
                        color: AppColors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: ' Sign Up',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                            fontFamily: AppConst.fontFamily,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PgSignup(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                padVertical(20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
