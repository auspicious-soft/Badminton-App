import 'package:badminton/Pages/SIgnIn/pg_signin.dart';
import 'package:badminton/Pages/splash_second.dart';
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

class PgSignup extends StatefulWidget {
  const PgSignup({super.key});

  @override
  State<PgSignup> createState() => _PgSignupState();
}

class _PgSignupState extends State<PgSignup> {
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
                          padVertical(40),
                          GestureDetector(
                            onTap: () => {Navigator.pop(context)},
                            child: Image.asset(
                              AppAssets.backbtn,
                              fit: BoxFit.contain,
                              width: 20,
                              height: 15,
                            ),
                          ),
                          padVertical(30),
                          const Label(
                            txt: "Register",
                            type: TextTypes.f_30_700,
                          ),
                          const Label(
                            txt: "Create an account to continue! ",
                            type: TextTypes.f_14_400,
                            forceColor: AppColors.smalltxt,
                          ),
                          padVertical(40),
                          commonTxtField(
                            hTxt: "First name",
                          ),
                          padVertical(20),
                          commonTxtField(
                            hTxt: "last name",
                          ),
                          padVertical(20),
                          commonTxtField(
                              hTxt: "Email",
                              keyboardType: TextInputType.emailAddress),
                          padVertical(20),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Label(
                                    txt: "18/03/2024",
                                    type: TextTypes.f_14_400),
                                Image.asset(
                                  AppAssets.calender,
                                  fit: BoxFit.contain,
                                  width: 20,
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                          padVertical(20),
                          commonTxtField(
                              hTxt: "+124567890",
                              keyboardType: TextInputType.phone),
                          padVertical(20),
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
                          padVertical(35),
                          SizedBox(
                            width: double.infinity,
                            child: commonButton(
                              txt: "Register",
                              context: context,
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SplashSecond(),
                                  ),
                                )
                              },
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
                      text: 'Remember Password?',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppConst.fontFamily,
                        color: AppColors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: ' Login',
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
                                  builder: (context) => const PgSignin(),
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
