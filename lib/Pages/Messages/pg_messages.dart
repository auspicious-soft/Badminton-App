import 'package:badminton/Pages/Chat/pg_chat.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:flutter/material.dart';

class PgMessages extends StatefulWidget {
  const PgMessages({super.key});

  @override
  State<PgMessages> createState() => _PgMessagesState();
}

class _PgMessagesState extends State<PgMessages> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
            child: WidgetGlobalMargin(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                padVertical(10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        GestureDetector(
                            onTap: () => {Navigator.pop(context)},
                            child: Container(
                              width: 38,
                              height: 29,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Image.asset(
                                AppAssets.backbtn,
                                fit: BoxFit.contain,
                                height: 9,
                                width: 12,
                                color: AppColors.whiteColor,
                              ),
                            )),
                        padHorizontal(15),
                        const Label(
                          txt: "Messages",
                          type: TextTypes.f_18_600,
                        ),
                      ]),
                      Row(children: [
                        const Icon(
                          Icons.search,
                          color: AppColors.smalltxt,
                        ),
                        padHorizontal(10),
                        const Icon(
                          Icons.more_vert,
                          color: AppColors.smalltxt,
                        )
                      ]),
                    ]),
                padVertical(20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = 0;
                                });
                              },
                              child: Container(
                                  height: 44,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: selectedIndex == 0
                                        ? AppColors.primaryColor
                                        : AppColors.lightGrey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Label(
                                      txt: "Messages",
                                      type: TextTypes.f_12_500,
                                      forceColor: selectedIndex == 0
                                          ? AppColors.whiteColor
                                          : AppColors.smalltxt,
                                    ),
                                  )))),
                      padHorizontal(20),
                      Expanded(
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                            child: Container(
                                height: 44,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: BoxDecoration(
                                  color: selectedIndex == 1
                                      ? AppColors.primaryColor
                                      : AppColors.lightGrey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                    child: Label(
                                  txt: "Groups",
                                  type: TextTypes.f_12_500,
                                  forceColor: selectedIndex == 1
                                      ? AppColors.whiteColor
                                      : AppColors.smalltxt,
                                )))),
                      )
                    ]),
                padVertical(20),
                Column(children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PgChat(),
                              ),
                            );
                          },
                          child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(30)),
                                              child: Image.asset(
                                                AppAssets.rankProfile,
                                                fit: BoxFit.fill,
                                                height: 48,
                                                width: 48,
                                              ),
                                            ),
                                            padHorizontal(10),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Label(
                                                    txt: "kevin.eth",
                                                    type: TextTypes.f_18_700,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      padVertical(2),
                                                      const Label(
                                                        txt:
                                                            "I thought it was you, lol",
                                                        type:
                                                            TextTypes.f_14_400,
                                                        forceColor:
                                                            AppColors.smalltxt,
                                                      )
                                                    ],
                                                  ),
                                                ])
                                          ],
                                        ),
                                        const Label(
                                          txt: "14:28",
                                          type: TextTypes.f_12_400,
                                          forceColor: AppColors.smalltxt,
                                        ),
                                      ])
                                ],
                              )));
                    },
                  )
                ])
              ],
            ),
          ),
        )));
  }
}
