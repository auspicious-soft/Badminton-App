import 'package:badminton/Pages/Friends/pg_friends.dart';
import 'package:badminton/Pages/PrivacyPolicy/pg_privacypolicy.dart';
import 'package:badminton/Pages/ReferCode/pg_refercode.dart';
import 'package:badminton/Pages/Voucher/pg_voucher.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:flutter/material.dart';

class PgTabmore extends StatefulWidget {
  const PgTabmore({super.key});

  @override
  State<PgTabmore> createState() => _PgTabmoreState();
}

class _PgTabmoreState extends State<PgTabmore> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
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
                      padVertical(20),
                      Row(
                        children: [
                          Container(
                            height: 92,
                            width: 92,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(45),
                                border: Border.all(
                                    width: 2, color: AppColors.blue)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(45),
                                child: Image.asset(
                                  AppAssets.rankProfile,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          padHorizontal(20),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Label(
                                  txt: "Claire Browne.",
                                  type: TextTypes.f_16_600,
                                ),
                                padVertical(10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: AppColors.blue2,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Label(
                                    txt: "Beginner",
                                    type: TextTypes.f_10_400,
                                    forceColor: AppColors.whiteColor,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                      padVertical(20),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Label(
                                        txt: "16",
                                        type: TextTypes.f_20_400,
                                      ),
                                      Label(
                                        txt: "Matches",
                                        type: TextTypes.f_10_400,
                                      ),
                                    ]),
                                Container(
                                  height: 34,
                                  decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      border: Border.all(
                                          width: 1, color: AppColors.border2)),
                                ),
                                const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Label(
                                        txt: "250",
                                        type: TextTypes.f_20_400,
                                      ),
                                      Label(
                                        txt: "Friends",
                                        type: TextTypes.f_10_400,
                                      ),
                                    ]),
                                Container(
                                  height: 34,
                                  decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      border: Border.all(
                                          width: 1, color: AppColors.border2)),
                                ),
                                const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Label(
                                        txt: "16",
                                        type: TextTypes.f_20_400,
                                      ),
                                      Label(
                                        txt: "Play Coins",
                                        type: TextTypes.f_10_400,
                                      ),
                                    ]),
                              ])),
                      padVertical(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    width: 1,
                                    color: AppColors.blue2,
                                  )),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Label(
                                  txt: "Invite Friends",
                                  type: TextTypes.f_12_400,
                                  forceColor: AppColors.blue2,
                                ),
                              ),
                            ),
                          ),
                          padHorizontal(10),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.blue2,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Label(
                                    txt: "Edit Profile",
                                    type: TextTypes.f_12_400,
                                    forceColor: AppColors.whiteColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      padVertical(30),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        AppAssets.mybooking,
                                        fit: BoxFit.contain,
                                        width: 16,
                                        height: 16,
                                      )),
                                ),
                                padHorizontal(20),
                                const Label(
                                    txt: "My Bookings",
                                    type: TextTypes.f_12_700)
                              ],
                            ),
                            padVertical(6),
                            const Divider(),
                            padVertical(6),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PgFriends(),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            AppAssets.friends,
                                            fit: BoxFit.contain,
                                            width: 16,
                                            height: 16,
                                          )),
                                    ),
                                    padHorizontal(20),
                                    const Label(
                                        txt: "Friends",
                                        type: TextTypes.f_12_700)
                                  ],
                                )),
                            padVertical(6),
                            const Divider(),
                            padVertical(6),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        AppAssets.package,
                                        fit: BoxFit.contain,
                                        width: 16,
                                        height: 16,
                                      )),
                                ),
                                padHorizontal(20),
                                const Label(
                                    txt: "Packages", type: TextTypes.f_12_700)
                              ],
                            ),
                            padVertical(6),
                            const Divider(),
                            padVertical(6),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        AppAssets.loyality,
                                        fit: BoxFit.contain,
                                        width: 16,
                                        height: 16,
                                      )),
                                ),
                                padHorizontal(20),
                                const Label(
                                    txt: "Loyalty Club",
                                    type: TextTypes.f_12_700)
                              ],
                            ),
                            padVertical(6),
                            const Divider(),
                            padVertical(6),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PgRefercode(),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            AppAssets.referal,
                                            fit: BoxFit.contain,
                                            width: 16,
                                            height: 16,
                                          )),
                                    ),
                                    padHorizontal(20),
                                    const Label(
                                        txt: "Referrals",
                                        type: TextTypes.f_12_700)
                                  ],
                                )),
                            padVertical(6),
                            const Divider(),
                            padVertical(6),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PgVoucher(),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            AppAssets.voucher,
                                            fit: BoxFit.contain,
                                            width: 16,
                                            height: 16,
                                          )),
                                    ),
                                    padHorizontal(20),
                                    const Label(
                                        txt: "Vouchers",
                                        type: TextTypes.f_12_700)
                                  ],
                                )),
                            padVertical(6),
                            const Divider(),
                            padVertical(6),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PgPrivacypolicy(),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            AppAssets.privacy,
                                            fit: BoxFit.contain,
                                            width: 16,
                                            height: 16,
                                          )),
                                    ),
                                    padHorizontal(20),
                                    const Label(
                                        txt: "Privacy Policy",
                                        type: TextTypes.f_12_700)
                                  ],
                                )),
                            padVertical(6),
                            const Divider(),
                            padVertical(6),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        AppAssets.privacy,
                                        fit: BoxFit.contain,
                                        width: 16,
                                        height: 16,
                                      )),
                                ),
                                padHorizontal(20),
                                const Label(
                                    txt: "Terms & Conditions",
                                    type: TextTypes.f_12_700)
                              ],
                            ),
                            padVertical(6),
                            const Divider(),
                            padVertical(6),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        AppAssets.logout,
                                        fit: BoxFit.contain,
                                        width: 16,
                                        height: 16,
                                      )),
                                ),
                                padHorizontal(20),
                                const Label(
                                    txt: "Logout", type: TextTypes.f_12_700)
                              ],
                            ),
                          ])),
                      padVertical(6),
                    ]))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
