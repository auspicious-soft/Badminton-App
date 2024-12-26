import 'package:badminton/Pages/SIgnIn/pg_signin.dart';
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

class PgChangePassword extends StatefulWidget {
  const PgChangePassword({super.key});

  @override
  State<PgChangePassword> createState() => _PgChangePasswordState();
}

class _PgChangePasswordState extends State<PgChangePassword> {
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
                            txt: "Create A New",
                            type: TextTypes.f_30_700,
                          ),
                          const Label(
                            txt: "Password",
                            type: TextTypes.f_30_700,
                          ),
                          const Label(
                            txt: "Create new password at least 8 digit long.",
                            type: TextTypes.f_14_400,
                            forceColor: AppColors.smalltxt,
                          ),
                          padVertical(40),
                          commonTxtField(
                            hTxt: "New password",
                          ),
                          padVertical(20),
                          commonTxtField(
                            hTxt: "New password",
                          ),
                          padVertical(35),
                          SizedBox(
                            width: double.infinity,
                            child: commonButton(
                              txt: "Confirm",
                              context: context,
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PgSignin(),
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
