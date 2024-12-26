import 'package:badminton/Pages/CourtDetail/pg_courtdetail.dart';
import 'package:badminton/Pages/Notification/pg_notification.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';

import 'package:flutter/material.dart';

class PgVenues extends StatefulWidget {
  const PgVenues({super.key});

  @override
  State<PgVenues> createState() => _PgVenuesState();
}

class _PgVenuesState extends State<PgVenues> {
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
                Container(
                    padding: const EdgeInsets.all(15),
                    decoration:
                        const BoxDecoration(color: AppColors.whiteColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppAssets.location,
                                fit: BoxFit.contain,
                                width: 25,
                                height: 20,
                              ),
                              padHorizontal(5),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Label(
                                            txt: "Nearby",
                                            type: TextTypes.f_12_700),
                                        Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          size: 20,
                                        )
                                      ]),
                                  Label(
                                    txt: "Sector 24, Chandigarh",
                                    type: TextTypes.f_12_500,
                                    forceColor: AppColors.smalltxt,
                                  )
                                ],
                              )
                            ]),
                        Row(children: [
                          Image.asset(
                            AppAssets.chat,
                            fit: BoxFit.contain,
                            width: 40,
                            height: 40,
                          ),
                          padHorizontal(5),
                          GestureDetector(
                              onTap: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PgNotification(),
                                      ),
                                    )
                                  },
                              child: Image.asset(
                                AppAssets.bell,
                                fit: BoxFit.contain,
                                width: 40,
                                height: 40,
                              )),
                          padHorizontal(5),
                          Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    width: 2, color: AppColors.primaryColor)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  AppAssets.profile,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ])
                      ],
                    )),
                padVertical(15),
                Expanded(
                    child: WidgetGlobalMargin(
                        child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.more,
                            fit: BoxFit.contain,
                            width: 25,
                            height: 25,
                            color: AppColors.darkprimary,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                    minWidth:
                                        MediaQuery.of(context).size.width),
                                child: Row(
                                  children: [
                                    padHorizontal(8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Row(
                                        children: [
                                          Label(
                                            txt: "Paddle",
                                            type: TextTypes.f_10_400,
                                            forceColor: AppColors.whiteColor,
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down_outlined,
                                            color: AppColors.whiteColor,
                                          )
                                        ],
                                      ),
                                    ),
                                    padHorizontal(8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Row(
                                        children: [
                                          Label(
                                            txt: "Club",
                                            type: TextTypes.f_10_400,
                                            forceColor: AppColors.whiteColor,
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down_outlined,
                                            color: AppColors.whiteColor,
                                          )
                                        ],
                                      ),
                                    ),
                                    padHorizontal(8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Row(
                                        children: [
                                          Label(
                                            txt: "Mon-Thu",
                                            type: TextTypes.f_10_400,
                                            forceColor: AppColors.whiteColor,
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down_outlined,
                                            color: AppColors.whiteColor,
                                          )
                                        ],
                                      ),
                                    ),
                                    padHorizontal(8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Row(
                                        children: [
                                          Label(
                                            txt: "Distance",
                                            type: TextTypes.f_10_400,
                                            forceColor: AppColors.whiteColor,
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down_outlined,
                                            color: AppColors.whiteColor,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      padVertical(20),
                      const Label(
                        txt: "Venues Near You",
                        type: TextTypes.f_16_600,
                      ),
                      padVertical(15),
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
                                    builder: (context) => const PgCourtdetail(),
                                  ),
                                );
                              },
                              child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGrey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(children: [
                                          Image.asset(
                                            AppAssets.racket,
                                            fit: BoxFit.contain,
                                            width: 50,
                                            height: 50,
                                          ),
                                          padHorizontal(8),
                                          const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Label(
                                                    txt:
                                                        "Sector 24, Chandigarh",
                                                    type: TextTypes.f_12_700),
                                                Label(
                                                  txt:
                                                      "Kemmer Trafficway, West Zen...",
                                                  type: TextTypes.f_10_400,
                                                  forceColor:
                                                      AppColors.smalltxt,
                                                )
                                              ])
                                        ]),
                                        Row(children: [
                                          const Icon(
                                            Icons.wb_sunny_outlined,
                                            size: 28,
                                            color: Color.fromARGB(
                                                255, 246, 224, 23),
                                          ),
                                          padHorizontal(10),
                                          Container(
                                              width: 50,
                                              height: 50,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8),
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: AppColors.whiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              child: const Column(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 16,
                                                    color: AppColors.blue,
                                                  ),
                                                  Label(
                                                    txt: "3.6km",
                                                    type: TextTypes.f_8_400,
                                                    forceColor: AppColors.blue,
                                                  )
                                                ],
                                              ))
                                        ])
                                      ],
                                    ),
                                    const Divider(),
                                    const Align(
                                        alignment: Alignment.topLeft,
                                        child: Label(
                                          txt: "Slots available today",
                                          type: TextTypes.f_12_700,
                                          forceColor: AppColors.primaryColor,
                                        )),
                                    Row(children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: AppColors.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Label(
                                          txt: "06:00",
                                          type: TextTypes.f_12_500,
                                          forceColor: AppColors.smalltxt,
                                        ),
                                      ),
                                      padHorizontal(10),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: AppColors.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Label(
                                          txt: "10:00",
                                          type: TextTypes.f_12_500,
                                          forceColor: AppColors.smalltxt,
                                        ),
                                      ),
                                      padHorizontal(10),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: AppColors.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Label(
                                          txt: "11:00",
                                          type: TextTypes.f_12_500,
                                          forceColor: AppColors.smalltxt,
                                        ),
                                      ),
                                      padHorizontal(10),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: AppColors.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Label(
                                          txt: "12:00",
                                          type: TextTypes.f_12_500,
                                          forceColor: AppColors.smalltxt,
                                        ),
                                      ),
                                    ])
                                  ])));
                        },
                      ),
                    ])))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
