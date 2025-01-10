import 'package:badminton/Pages/CourtDetail/pg_courtdetail.dart';
import 'package:badminton/Pages/Notification/pg_notification.dart';
import 'package:badminton/Pages/Tournaments/pg_tournaments.dart';
import 'package:badminton/Pages/Venues/pg_venues.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_const.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class PgTabhome extends StatefulWidget {
  const PgTabhome({super.key});

  @override
  State<PgTabhome> createState() => _PgTabhomeState();
}

class _PgTabhomeState extends State<PgTabhome> {
  final List<Map<String, String>> banners = [
    {
      "image": AppAssets.profile,
      "title": "Tennis",
    },
    {
      "image": AppAssets.profile,
      "title": "Badminton",
    },
    {
      "image": AppAssets.profile,
      "title": "Swimming",
    },
  ];

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
                Expanded(
                    child: WidgetGlobalMargin(
                        child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                      const SizedBox(height: 20),
                      CarouselSlider.builder(
                        itemCount: banners.length,
                        itemBuilder: (context, index, realIndex) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(banners[index]["image"]!),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                      horizontal: 10,
                                    ),
                                    child: Label(
                                      txt: banners[index]["title"]!,
                                      type: TextTypes.f_16_600,
                                      forceColor: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        options: CarouselOptions(
                          height: 150,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              color: AppColors.border,
                              thickness: 1,
                              endIndent: 10,
                            ),
                          ),
                          padHorizontal(5),
                          const Label(
                            txt: "Activities",
                            type: TextTypes.f_12_700,
                          ),
                          padHorizontal(10),
                          const Expanded(
                            child: Divider(
                              color: AppColors.border,
                              thickness: 1,
                              endIndent: 8,
                            ),
                          ),
                        ],
                      ),
                      padVertical(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 150,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Label(
                                  txt: "Upcoming",
                                  type: TextTypes.f_8_400,
                                  forceColor: AppColors.whiteColor,
                                ),
                                padVertical(5),
                                const Label(
                                  txt: "Padel Match",
                                  type: TextTypes.f_14_700,
                                  forceColor: AppColors.whiteColor,
                                ),
                                padVertical(5),
                                Row(
                                  children: [
                                    Image.asset(
                                      AppAssets.calender2,
                                      fit: BoxFit.contain,
                                      width: 15,
                                      height: 15,
                                    ),
                                    padHorizontal(10),
                                    const Label(
                                      txt: "Nov 10, 2024 | 08:00 A.M.",
                                      type: TextTypes.f_12_500,
                                      forceColor: AppColors.whiteColor,
                                    ),
                                  ],
                                ),
                                padVertical(15),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 40,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: AppColors.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Label(
                                            txt: "14 Oct, Wed",
                                            type: TextTypes.f_14_700,
                                            forceColor: AppColors.primaryColor,
                                          ),
                                        )))
                              ],
                            ),
                          ),
                          Container(
                            height: 150,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                padVertical(5),
                                const Label(
                                  txt: "Player Rankings",
                                  type: TextTypes.f_14_700,
                                  forceColor: AppColors.blackColor,
                                ),
                                padVertical(15),
                                const Label(
                                  txt: "Play more games to get your",
                                  type: TextTypes.f_8_400,
                                  forceColor: AppColors.grey,
                                  forceAlignment: TextAlign.center,
                                ),
                                const Label(
                                  txt: "profile summary ranking.",
                                  type: TextTypes.f_8_400,
                                  forceColor: AppColors.grey,
                                  forceAlignment: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      padVertical(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 150,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Label(
                                  txt: "Upcoming",
                                  type: TextTypes.f_8_400,
                                  forceColor: AppColors.smalltxt,
                                ),
                                padVertical(5),
                                const Label(
                                  txt: "Loyalty Points",
                                  type: TextTypes.f_14_700,
                                ),
                                padVertical(5),
                                const SizedBox(
                                    width: 120,
                                    child: Label(
                                      txt:
                                          "Collect 2000 more and win an assured reward.",
                                      type: TextTypes.f_8_400,
                                      forceColor: AppColors.smalltxt,
                                    )),
                                padVertical(15),
                                const SizedBox(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Label(
                                          txt: "2000",
                                          type: TextTypes.f_8_400,
                                          forceColor: AppColors.smalltxt,
                                        ),
                                        Label(
                                          txt: "8000",
                                          type: TextTypes.f_8_400,
                                          forceColor: AppColors.smalltxt,
                                        ),
                                      ],
                                    )),
                                padVertical(10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(5, (index) {
                                    bool isCompleted = index < 2;
                                    return Container(
                                      width: 30,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: isCompleted
                                            ? AppColors.orange
                                            : Colors.grey,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ),
                          Column(children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PgTournaments(),
                                    ),
                                  );
                                },
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            AppAssets.tournament,
                                            fit: BoxFit.contain,
                                            width: 44,
                                            height: 44,
                                          ),
                                          padHorizontal(5),
                                          const Label(
                                            txt: "Tournaments",
                                            type: TextTypes.f_14_700,
                                            forceColor: AppColors.blackColor,
                                          ),
                                        ],
                                      ),
                                    ]))),
                            padVertical(10),
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.lightGrey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        AppAssets.racket,
                                        fit: BoxFit.contain,
                                        width: 44,
                                        height: 44,
                                      ),
                                      padHorizontal(5),
                                      const Label(
                                        txt: "Merchandise",
                                        type: TextTypes.f_14_700,
                                        forceColor: AppColors.blackColor,
                                      ),
                                    ],
                                  ),
                                ]))
                          ])
                        ],
                      ),
                      padVertical(15),
                      const Label(
                        txt: "Courts Near You",
                        type: TextTypes.f_14_700,
                        forceColor: AppColors.blackColor,
                      ),
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
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.lightGrey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
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
                                                txt: "Sector 24, Chandigarh",
                                                type: TextTypes.f_12_700),
                                            Label(
                                              txt:
                                                  "Kemmer Trafficway, West Zen...",
                                              type: TextTypes.f_10_400,
                                              forceColor: AppColors.smalltxt,
                                            )
                                          ])
                                    ]),
                                    Row(children: [
                                      const Icon(
                                        Icons.wb_sunny_outlined,
                                        size: 28,
                                        color:
                                            Color.fromARGB(255, 246, 224, 23),
                                      ),
                                      padHorizontal(10),
                                      Container(
                                          width: 50,
                                          height: 50,
                                          margin: const EdgeInsets.symmetric(
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
                              ));
                        },
                      ),
                    ])))),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        iconTheme: const IconThemeData(size: 30),
        activeIcon: Icons.close,
        backgroundColor: AppColors.primaryColor,
        overlayOpacity: 0.4,
        overlayColor: Colors.black,
        foregroundColor: Colors.white,
        spaceBetweenChildren: 10,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            child: ClipOval(
              child: Container(
                color: AppColors.whiteColor,
                height: 50,
                width: 50,
                child: Center(
                  child: Image.asset(
                    AppAssets.newgame,
                    fit: BoxFit.contain,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ),
            label: 'Create New Game',
            labelStyle: const TextStyle(
              fontSize: 14,
              fontFamily: AppConst.fontFamily,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PgVenues(),
                ),
              );
            },
          ),
          SpeedDialChild(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            child: ClipOval(
              child: Container(
                color: AppColors.whiteColor,
                height: 50,
                width: 50,
                child: Center(
                  child: Image.asset(
                    AppAssets.rackett,
                    fit: BoxFit.contain,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ),
            label: 'My Bookings',
            labelStyle: const TextStyle(
              fontSize: 14,
              fontFamily: AppConst.fontFamily,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
            onTap: () {
              // Add your functionality here
            },
          ),
          SpeedDialChild(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            child: ClipOval(
              child: Container(
                color: AppColors.whiteColor,
                height: 50,
                width: 50,
                child: Center(
                  child: Image.asset(
                    AppAssets.score,
                    fit: BoxFit.contain,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ),
            label: 'Upload Score',
            labelStyle: const TextStyle(
              fontSize: 14,
              fontFamily: AppConst.fontFamily,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
            onTap: () {
              // Add your functionality here
            },
          ),
        ],
      ),
    );
  }
}
