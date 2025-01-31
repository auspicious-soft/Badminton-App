import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:flutter/material.dart';

class PgProfileDetail extends StatefulWidget {
  const PgProfileDetail({super.key});

  @override
  State<PgProfileDetail> createState() => _PgProfileDetailState();
}

class _PgProfileDetailState extends State<PgProfileDetail> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
            child: WidgetGlobalMargin(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              padVertical(10),
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
              padVertical(20),
              Center(
                  child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: AppColors.blue2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(90))),
                  height: 158,
                  width: 158,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(90)),
                    child: Image.asset(
                      AppAssets.rankProfile,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ])),
              padVertical(20),
              const Center(
                  child: Label(
                txt: "Rebecca Black",
                type: TextTypes.f_20_600,
              )),
              padVertical(10),
              const Center(
                  child: Label(
                txt: "Last played on 14th Jun 2023 ",
                type: TextTypes.f_12_400,
              )),
              padVertical(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.blue2,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Label(
                      txt: "Add friend",
                      type: TextTypes.f_12_500,
                      forceColor: AppColors.whiteColor,
                    )),
                  )),
                  padHorizontal(20),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.blue2,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Label(
                      txt: "Message",
                      type: TextTypes.f_12_500,
                      forceColor: AppColors.whiteColor,
                    )),
                  )),
                ],
              ),
              padVertical(10),
              const Label(
                txt: "Statistics",
                type: TextTypes.f_16_600,
              ),
              padVertical(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    txt: "Level",
                    type: TextTypes.f_12_700,
                  ),
                  Label(
                    txt: "3436",
                    type: TextTypes.f_12_700,
                    forceColor: AppColors.grey,
                  ),
                ],
              ),
              padVertical(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    txt: "Last month level",
                    type: TextTypes.f_12_700,
                  ),
                  Label(
                    txt: "-1",
                    type: TextTypes.f_12_700,
                    forceColor: AppColors.grey,
                  ),
                ],
              ),
              padVertical(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    txt: "Level this month",
                    type: TextTypes.f_12_700,
                  ),
                  Label(
                    txt: "-1",
                    type: TextTypes.f_12_700,
                    forceColor: AppColors.grey,
                  ),
                ],
              ),
              padVertical(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    txt: "Level 6 months ago",
                    type: TextTypes.f_12_700,
                  ),
                  Label(
                    txt: "-1",
                    type: TextTypes.f_12_700,
                    forceColor: AppColors.grey,
                  ),
                ],
              ),
              padVertical(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    txt: "Level 12 months ago",
                    type: TextTypes.f_12_700,
                  ),
                  Label(
                    txt: "-1",
                    type: TextTypes.f_12_700,
                    forceColor: AppColors.grey,
                  ),
                ],
              ),
              padVertical(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    txt: "Improvement",
                    type: TextTypes.f_12_700,
                  ),
                  Label(
                    txt: "-0.01",
                    type: TextTypes.f_12_700,
                    forceColor: AppColors.grey,
                  ),
                ],
              ),
              padVertical(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    txt: "Confidence",
                    type: TextTypes.f_12_700,
                  ),
                  Label(
                    txt: "27%",
                    type: TextTypes.f_12_700,
                    forceColor: AppColors.grey,
                  ),
                ],
              ),
              padVertical(20),
              const Label(
                txt: "Previous Games",
                type: TextTypes.f_16_600,
              ),
              padVertical(10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                const Label(
                                  txt: "•  Padel",
                                  type: TextTypes.f_10_600,
                                  forceColor: AppColors.smalltxt,
                                ),
                                padHorizontal(8),
                                const Label(
                                  txt: "•  90min",
                                  type: TextTypes.f_10_600,
                                  forceColor: AppColors.smalltxt,
                                )
                              ]),
                              const Label(
                                txt: "Friendly Match",
                                type: TextTypes.f_10_600,
                                forceColor: AppColors.smalltxt,
                              ),
                            ],
                          ),
                          padVertical(10),
                          Row(children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppColors.addbtn,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Icon(Icons.add),
                                ),
                                const Label(
                                  txt: "Available",
                                  type: TextTypes.f_10_400,
                                  forceColor: AppColors.primaryColor,
                                )
                              ],
                            ),
                            padHorizontal(10),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppColors.addbtn,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Icon(Icons.add),
                                ),
                                const Label(
                                  txt: "Available",
                                  type: TextTypes.f_10_400,
                                  forceColor: AppColors.primaryColor,
                                )
                              ],
                            )
                          ]),
                          padVertical(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              padVertical(5),
                              Row(children: [
                                Image.asset(
                                  AppAssets.location,
                                  fit: BoxFit.contain,
                                  width: 15,
                                  height: 15,
                                ),
                                padHorizontal(5),
                                const Label(
                                  txt: "Kemmer Trafficway, West Zenatown,",
                                  type: TextTypes.f_10_400,
                                  forceColor: AppColors.smalltxt,
                                )
                              ]),
                              padVertical(10),
                              Row(children: [
                                Image.asset(
                                  AppAssets.calender2,
                                  fit: BoxFit.contain,
                                  width: 15,
                                  height: 15,
                                  color: AppColors.primaryColor,
                                ),
                                padHorizontal(5),
                                const Label(
                                  txt: "Nov 10, 2024 | 08:00 A.M.",
                                  type: TextTypes.f_10_400,
                                  forceColor: AppColors.smalltxt,
                                )
                              ])
                            ],
                          ),
                          padVertical(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  padVertical(5),
                                  Row(children: [
                                    const Label(
                                      txt: "Team 1",
                                      type: TextTypes.f_12_700,
                                    ),
                                    padHorizontal(80),
                                    const Label(
                                      txt: "3 3 3",
                                      type: TextTypes.f_12_700,
                                      forceColor: AppColors.smalltxt,
                                    )
                                  ]),
                                  padVertical(8),
                                  Row(children: [
                                    Container(
                                      width: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.6,
                                            color: AppColors.border2),
                                      ),
                                    ),
                                    padHorizontal(10),
                                    const Label(
                                      txt: "Pts",
                                      type: TextTypes.f_10_400,
                                    )
                                  ]),
                                  padVertical(8),
                                  Row(children: [
                                    const Label(
                                      txt: "Team 2",
                                      type: TextTypes.f_12_700,
                                    ),
                                    padHorizontal(80),
                                    const Label(
                                      txt: "2 2 2",
                                      type: TextTypes.f_12_700,
                                      forceColor: AppColors.smalltxt,
                                    )
                                  ])
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: AppColors.blue2,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Label(
                                  txt: "Modify",
                                  type: TextTypes.f_10_600,
                                  forceColor: AppColors.whiteColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ));
                },
              ),
            ]),
          ),
        )));
  }
}
