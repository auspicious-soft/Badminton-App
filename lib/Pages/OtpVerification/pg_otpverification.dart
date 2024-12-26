import 'package:badminton/Pages/ChangePassword/pg_change_password.dart';
import 'package:badminton/Pages/SIgnIn/pg_signin.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_const.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:badminton/app_settings/constants/common_button.dart';
import 'package:flutter/gestures.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';

class PgOtpverification extends StatefulWidget {
  const PgOtpverification({super.key});

  @override
  State<PgOtpverification> createState() => _PgOtpverificationState();
}

class _PgOtpverificationState extends State<PgOtpverification> {
  String otpCode = "";

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
                            txt: "Enter OTP",
                            type: TextTypes.f_30_700,
                          ),
                          const Label(
                            txt: "Enter the OTP received on your phone",
                            type: TextTypes.f_14_400,
                            forceColor: AppColors.smalltxt,
                          ),
                          padVertical(40),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: PinCodeTextField(
                              appContext: context,
                              length: 4,
                              onChanged: (value) {
                                setState(() {
                                  otpCode = value;
                                });
                              },
                              cursorColor: Colors.black,
                              textStyle: const TextStyle(
                                  fontFamily: AppConst.fontFamily,
                                  fontWeight: FontWeight.w500),
                              keyboardType: TextInputType.number,
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(10),
                                fieldHeight: 47,
                                fieldWidth: 47,
                                activeFillColor: AppColors.whiteColor,
                                inactiveFillColor: AppColors.whiteColor,
                                activeColor: AppColors.primaryColor,
                                selectedFillColor: Colors.white,
                                inactiveColor: AppColors.appBackground,
                                selectedColor: AppColors.blue,
                              ),
                              enableActiveFill: true,
                            ),
                          ),
                          padVertical(35),
                          SizedBox(
                            width: double.infinity,
                            child: commonButton(
                              txt: "Verify",
                              context: context,
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PgChangePassword(),
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
