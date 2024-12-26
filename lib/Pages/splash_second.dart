import 'package:badminton/Pages/SIgnIn/pg_signin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:badminton/app_settings/constants/common_button.dart';

import 'package:flutter/material.dart';

class SplashSecond extends StatefulWidget {
  const SplashSecond({super.key});

  @override
  State<SplashSecond> createState() => _SplashSecondState();
}

class _SplashSecondState extends State<SplashSecond> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(children: [
        SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            padVertical(50),
            SizedBox(
              child: Image.asset(
                AppAssets.splashback2,
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height / 1.2,
                width: double.infinity,
              ),
            ),
            padVertical(20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                    width: double.infinity,
                    child: commonButton(
                      txt: "Get Started",
                      context: context,
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PgSignin()),
                        )
                      },
                    ))),
            padVertical(20),
          ]),
        )
      ]),
    );
  }
}
