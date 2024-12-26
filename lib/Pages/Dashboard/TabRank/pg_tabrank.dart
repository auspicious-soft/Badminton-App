import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_const.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:flutter/material.dart';

class PgTabrank extends StatefulWidget {
  const PgTabrank({super.key});

  @override
  State<PgTabrank> createState() => _PgTabrankState();
}

class _PgTabrankState extends State<PgTabrank> {
  int selectedIndex = 0;
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
                          padVertical(10),
                          const Label(txt: "Ranking", type: TextTypes.f_18_600),
                          padVertical(15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = 0;
                                  });
                                },
                                child: Container(
                                  width: 150,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 0,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: selectedIndex == 0
                                        ? AppColors.primaryColor
                                        : AppColors.lightGrey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Label(
                                      txt: "Worldwide",
                                      type: TextTypes.f_14_500,
                                      forceColor: selectedIndex == 0
                                          ? AppColors.whiteColor
                                          : AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              padHorizontal(10),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = 1;
                                  });
                                },
                                child: Container(
                                  width: 150,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 0,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: selectedIndex == 1
                                        ? AppColors.primaryColor
                                        : AppColors.lightGrey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Label(
                                      txt: "Friends",
                                      type: TextTypes.f_14_500,
                                      forceColor: selectedIndex == 1
                                          ? AppColors.whiteColor
                                          : AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          padVertical(20),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColors.border,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        AppAssets.search,
                                        fit: BoxFit.contain,
                                        width: 20,
                                        height: 20,
                                      ),
                                      padHorizontal(10),
                                      const Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Search anything....",
                                            hintStyle: TextStyle(
                                                color: AppColors.smalltxt,
                                                fontFamily: AppConst.fontFamily,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13),
                                          ),
                                          style: TextStyle(
                                            color: AppColors.blackColor,
                                            fontFamily: AppConst.fontFamily,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: AppColors.border,
                                          width: 0.5,
                                        ),
                                      ),
                                    ),
                                    padHorizontal(8),
                                    Image.asset(
                                      AppAssets.filter,
                                      fit: BoxFit.contain,
                                      height: 15,
                                      width: 15,
                                    ),
                                    padHorizontal(8),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          padVertical(30),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          AppAssets.rankProfile,
                                          fit: BoxFit.cover,
                                          height: 76,
                                          width: 76,
                                        )),
                                    const Label(
                                      txt: "Mona Reznick",
                                      type: TextTypes.f_12_700,
                                    ),
                                    const Label(
                                      txt: "11021",
                                      type: TextTypes.f_12_500,
                                      forceColor: AppColors.grey,
                                    ),
                                    const Label(
                                      txt: "England",
                                      type: TextTypes.f_12_500,
                                      forceColor: AppColors.grey,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment
                                          .topCenter, // Align crown at the top center
                                      clipBehavior:
                                          Clip.none, // Allows crown to overflow
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          child: Image.asset(
                                            AppAssets.rankProfile,
                                            fit: BoxFit.cover,
                                            height: 117,
                                            width: 117,
                                          ),
                                        ),
                                        Positioned(
                                          // top: 10,
                                          top: -28,
                                          child: Image.asset(
                                            AppAssets.crown,
                                            fit: BoxFit.contain,
                                            height: 39,
                                            width: 39,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    const Label(
                                      txt: "Murphy Brandson",
                                      type: TextTypes.f_12_700,
                                    ),
                                    const Label(
                                      txt: "11021",
                                      type: TextTypes.f_12_500,
                                      forceColor: AppColors.grey,
                                    ),
                                    const Label(
                                      txt: "Indonesia",
                                      type: TextTypes.f_12_500,
                                      forceColor: AppColors.grey,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          AppAssets.rankProfile,
                                          fit: BoxFit.cover,
                                          height: 76,
                                          width: 76,
                                        )),
                                    const Label(
                                      txt: "Mona Reznick",
                                      type: TextTypes.f_12_700,
                                    ),
                                    const Label(
                                      txt: "11021",
                                      type: TextTypes.f_12_500,
                                      forceColor: AppColors.grey,
                                    ),
                                    const Label(
                                      txt: "England",
                                      type: TextTypes.f_12_500,
                                      forceColor: AppColors.grey,
                                    ),
                                  ],
                                )
                              ]),
                          padVertical(25),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [
                                        Container(
                                          height: 27,
                                          width: 27,
                                          decoration: BoxDecoration(
                                            color: AppColors.rankPoint,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: const Align(
                                              alignment: Alignment.center,
                                              child: Label(
                                                  txt: "4",
                                                  type: TextTypes.f_12_700)),
                                        ),
                                        padHorizontal(8),
                                        Row(
                                          children: [
                                            Image.asset(
                                              AppAssets.profile,
                                              fit: BoxFit.contain,
                                              height: 42,
                                              width: 46,
                                            ),
                                            padHorizontal(5),
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Label(
                                                  txt: "Murphy Brandson",
                                                  type: TextTypes.f_12_700,
                                                ),
                                                Label(
                                                  txt: "England",
                                                  type: TextTypes.f_12_500,
                                                  forceColor: AppColors.grey,
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ]),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: AppColors.blue2,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Label(
                                          txt: "11,258",
                                          type: TextTypes.f_12_700,
                                          forceColor: AppColors.whiteColor,
                                        ),
                                      ),
                                    ],
                                  ));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
