import 'package:badminton/Pages/ConfirmPayment/pg_confirmpayment.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:badminton/app_settings/constants/common_button.dart';
import 'package:flutter/material.dart';

class PgCourtdetail extends StatefulWidget {
  const PgCourtdetail({super.key});

  @override
  State<PgCourtdetail> createState() => _PgCourtdetailState();
}

class _PgCourtdetailState extends State<PgCourtdetail> {
  int selectedButton = 0;
  int selectedButton2 = 0;
  double _progressValue = 46;
  bool checkBox = false;
  bool askJoin = false;
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
                        padHorizontal(10),
                        const Label(
                          txt: "Courts",
                          type: TextTypes.f_18_600,
                        ),
                      ]),
                      padVertical(20),
                      const Label(
                        txt: "Sector 24, Chandigarh",
                        type: TextTypes.f_20_600,
                      ),
                      const Label(
                        txt: "Sector 24, Chandigarh",
                        type: TextTypes.f_12_500,
                        forceColor: AppColors.grey,
                      ),
                      padVertical(15),
                      Row(children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Row(children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 16,
                              color: AppColors.primaryColor,
                            ),
                            Label(
                              txt: " 3.6 Km",
                              type: TextTypes.f_10_600,
                              forceColor: AppColors.primaryColor,
                            )
                          ]),
                        ),
                        padHorizontal(10),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Row(children: [
                            const Icon(
                              Icons.wb_sunny_outlined,
                              size: 16,
                              color: AppColors.primaryColor,
                            ),
                            padHorizontal(5),
                            const Label(
                              txt: " Currently Raining",
                              type: TextTypes.f_10_600,
                              forceColor: AppColors.primaryColor,
                            )
                          ]),
                        ),
                      ]),
                      padVertical(30),
                      Row(children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedButton = 0;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  color: selectedButton == 0
                                      ? AppColors.blue2
                                      : AppColors.background,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: selectedButton == 0 ? 0 : 1,
                                      color: AppColors.smalltxt)),
                              child: Label(
                                txt: "Information",
                                type: TextTypes.f_10_600,
                                forceColor: selectedButton == 0
                                    ? AppColors.whiteColor
                                    : AppColors.smalltxt,
                              ),
                            )),
                        padHorizontal(10),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedButton = 1;
                              });
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: BoxDecoration(
                                    color: selectedButton == 1
                                        ? AppColors.blue2
                                        : AppColors.background,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1, color: AppColors.smalltxt)),
                                child: Label(
                                  txt: "Book Court",
                                  type: TextTypes.f_10_600,
                                  forceColor: selectedButton == 1
                                      ? AppColors.whiteColor
                                      : AppColors.smalltxt,
                                ))),
                      ]),
                      padVertical(20),
                      selectedButton == 0
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  const Label(
                                    txt: "Court Information",
                                    type: TextTypes.f_14_700,
                                  ),
                                  padVertical(5),
                                  const Label(
                                    txt:
                                        "onsequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.",
                                    type: TextTypes.f_12_500,
                                    forceColor: AppColors.grey,
                                  ),
                                  padVertical(15),
                                  const Label(
                                    txt: "Opening Hours",
                                    type: TextTypes.f_14_700,
                                  ),
                                  padVertical(5),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Label(
                                        txt: "Mon-Fri",
                                        type: TextTypes.f_12_700,
                                        forceColor: AppColors.grey,
                                      ),
                                      Label(
                                        txt: "6:00 AM -10:00PM",
                                        type: TextTypes.f_12_500,
                                        forceColor: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Label(
                                        txt: "Mon-Fri",
                                        type: TextTypes.f_12_700,
                                        forceColor: AppColors.grey,
                                      ),
                                      Label(
                                        txt: "6:00 AM -10:00PM",
                                        type: TextTypes.f_12_500,
                                        forceColor: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                  padVertical(30),
                                  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(children: [
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: AppColors.lightGrey,
                                            borderRadius:
                                                BorderRadius.circular(18),
                                          ),
                                          child: Row(children: [
                                            const Icon(
                                              Icons.wb_sunny_outlined,
                                              size: 16,
                                              color: AppColors.grey,
                                            ),
                                            padHorizontal(5),
                                            const Label(
                                              txt: "Special Access",
                                              type: TextTypes.f_10_600,
                                              forceColor: AppColors.grey,
                                            )
                                          ]),
                                        ),
                                        padHorizontal(10),
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: AppColors.lightGrey,
                                            borderRadius:
                                                BorderRadius.circular(18),
                                          ),
                                          child: Row(children: [
                                            const Icon(
                                              Icons.wb_sunny_outlined,
                                              size: 16,
                                              color: AppColors.grey,
                                            ),
                                            padHorizontal(5),
                                            const Label(
                                              txt: "Equipment Rental",
                                              type: TextTypes.f_10_600,
                                              forceColor: AppColors.grey,
                                            )
                                          ]),
                                        ),
                                        padHorizontal(10),
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: AppColors.lightGrey,
                                            borderRadius:
                                                BorderRadius.circular(18),
                                          ),
                                          child: Row(children: [
                                            const Icon(
                                              Icons.wb_sunny_outlined,
                                              size: 16,
                                              color: AppColors.grey,
                                            ),
                                            padHorizontal(5),
                                            const Label(
                                              txt: "Paid Parking",
                                              type: TextTypes.f_10_600,
                                              forceColor: AppColors.grey,
                                            )
                                          ]),
                                        ),
                                      ])),
                                  padVertical(50),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              right: 30,
                                              top: 8,
                                              bottom: 8,
                                              left: 10),
                                          decoration: BoxDecoration(
                                            color: AppColors.lightGrey,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Image.asset(
                                                AppAssets.direction,
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            padHorizontal(10),
                                            const Label(
                                              txt: "Directions",
                                              type: TextTypes.f_12_500,
                                              forceColor: AppColors.grey,
                                            )
                                          ]),
                                        ),
                                        padHorizontal(15),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              right: 30,
                                              top: 8,
                                              bottom: 8,
                                              left: 10),
                                          decoration: BoxDecoration(
                                            color: AppColors.lightGrey,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Image.asset(
                                                AppAssets.call,
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            padHorizontal(10),
                                            const Label(
                                              txt: "Call Now",
                                              type: TextTypes.f_12_500,
                                              forceColor: AppColors.grey,
                                            )
                                          ]),
                                        ),
                                      ])
                                ])
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightGrey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(children: [
                                        const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Label(
                                                txt: "Date",
                                                type: TextTypes.f_14_700,
                                              ),
                                              Label(
                                                txt: "More",
                                                type: TextTypes.f_12_400,
                                                forceColor: AppColors.grey,
                                              ),
                                            ]),
                                        padVertical(10),
                                        const Label(
                                          txt: "calender here",
                                          type: TextTypes.f_12_400,
                                          forceColor: AppColors.primaryColor,
                                        ),
                                      ])),
                                  padVertical(10),
                                  Row(
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              checkBox = !checkBox;
                                            });
                                          },
                                          child: Icon(
                                            checkBox
                                                ? Icons.check_box_rounded
                                                : Icons
                                                    .check_box_outline_blank_outlined,
                                            size: 25,
                                            color: checkBox
                                                ? AppColors.primaryColor
                                                : AppColors.grey,
                                          )),
                                      padHorizontal(5),
                                      const Label(
                                        txt: "Show available slots only",
                                        type: TextTypes.f_12_500,
                                        forceColor: AppColors.grey,
                                      )
                                    ],
                                  ),
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightGrey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(children: [
                                        const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Label(
                                                txt: "Morning",
                                                type: TextTypes.f_14_700,
                                              ),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: 25,
                                                color: AppColors.grey,
                                              ),
                                            ]),
                                        padVertical(10),
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
                                      ])),
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightGrey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(children: [
                                        const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Label(
                                                txt: "Afternoon",
                                                type: TextTypes.f_14_700,
                                              ),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: 25,
                                                color: AppColors.grey,
                                              ),
                                            ]),
                                        padVertical(10),
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
                                      ])),
                                  padVertical(20),
                                  const Label(
                                    txt: "Select a court",
                                    type: TextTypes.f_20_600,
                                  ),
                                  const Label(
                                    txt:
                                        "Kemmer Trafficway, Bengaluru, Karnataka",
                                    type: TextTypes.f_12_500,
                                    forceColor: AppColors.grey,
                                  ),
                                  padVertical(10),
                                  Row(
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              checkBox = !checkBox;
                                            });
                                          },
                                          child: Icon(
                                            checkBox
                                                ? Icons.check_box_rounded
                                                : Icons
                                                    .check_box_outline_blank_outlined,
                                            size: 25,
                                            color: checkBox
                                                ? AppColors.primaryColor
                                                : AppColors.grey,
                                          )),
                                      padHorizontal(5),
                                      const Label(
                                        txt: "Show available slots only",
                                        type: TextTypes.f_12_500,
                                        forceColor: AppColors.grey,
                                      )
                                    ],
                                  ),
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      padding: const EdgeInsets.all(15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: AppColors.lightGrey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Label(
                                              txt: "Name of the court",
                                              type: TextTypes.f_14_700,
                                            ),
                                            Row(children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 10),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: const Column(
                                                  children: [
                                                    Label(
                                                      txt: "₹1600",
                                                      type: TextTypes.f_14_700,
                                                      forceColor:
                                                          AppColors.whiteColor,
                                                    ),
                                                    Label(
                                                      txt: "60 Mins",
                                                      type: TextTypes.f_12_500,
                                                      forceColor:
                                                          AppColors.whiteColor,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              padHorizontal(10),
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: AppColors
                                                            .blackColor)),
                                                child: const Column(
                                                  children: [
                                                    Label(
                                                      txt: "₹3200",
                                                      type: TextTypes.f_14_700,
                                                    ),
                                                    Label(
                                                      txt: "120 Mins",
                                                      type: TextTypes.f_12_500,
                                                      forceColor:
                                                          AppColors.grey,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ])
                                          ])),
                                  Container(
                                      width: double.infinity,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightGrey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Label(
                                                    txt: "Game Type",
                                                    type: TextTypes.f_14_700,
                                                  ),
                                                ]),
                                            padVertical(5),
                                            Container(
                                              width: double.infinity,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                              decoration: BoxDecoration(
                                                color: AppColors.whiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                      child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        selectedButton2 = 0;
                                                      });
                                                    },
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 12),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            selectedButton2 == 0
                                                                ? AppColors
                                                                    .blue2
                                                                : AppColors
                                                                    .whiteColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        boxShadow:
                                                            selectedButton2 == 0
                                                                ? [
                                                                    const BoxShadow(
                                                                        color: Colors
                                                                            .black12,
                                                                        blurRadius:
                                                                            2)
                                                                  ]
                                                                : null,
                                                      ),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              Icons.public,
                                                              size: 13,
                                                              color: selectedButton2 ==
                                                                      0
                                                                  ? AppColors
                                                                      .whiteColor
                                                                  : AppColors
                                                                      .grey,
                                                            ),
                                                            padHorizontal(5),
                                                            Label(
                                                                txt: "Public",
                                                                forceColor: selectedButton2 ==
                                                                        0
                                                                    ? AppColors
                                                                        .whiteColor
                                                                    : AppColors
                                                                        .grey,
                                                                type: TextTypes
                                                                    .f_12_500),
                                                          ]),
                                                    ),
                                                  )),
                                                  const SizedBox(width: 10),
                                                  Expanded(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          selectedButton2 = 1;
                                                        });
                                                      },
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 12),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              selectedButton2 ==
                                                                      1
                                                                  ? AppColors
                                                                      .blue2
                                                                  : AppColors
                                                                      .whiteColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          boxShadow:
                                                              selectedButton2 ==
                                                                      1
                                                                  ? [
                                                                      const BoxShadow(
                                                                          color: Colors
                                                                              .black12,
                                                                          blurRadius:
                                                                              2)
                                                                    ]
                                                                  : null,
                                                        ),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .lock_outline,
                                                                size: 13,
                                                                color: selectedButton2 ==
                                                                        1
                                                                    ? AppColors
                                                                        .whiteColor
                                                                    : AppColors
                                                                        .grey,
                                                              ),
                                                              padHorizontal(5),
                                                              Label(
                                                                  txt:
                                                                      "Private",
                                                                  forceColor: selectedButton2 ==
                                                                          1
                                                                      ? AppColors
                                                                          .whiteColor
                                                                      : AppColors
                                                                          .grey,
                                                                  type: TextTypes
                                                                      .f_12_500),
                                                            ]),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            padVertical(8),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        askJoin = true;
                                                      });
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                            color: askJoin ==
                                                                    true
                                                                ? AppColors
                                                                    .primaryColor
                                                                : AppColors
                                                                    .grey,
                                                            askJoin == true
                                                                ? Icons
                                                                    .radio_button_checked_outlined
                                                                : Icons
                                                                    .radio_button_off_outlined),
                                                        padHorizontal(5),
                                                        Label(
                                                          txt: "Ask to Join",
                                                          type: TextTypes
                                                              .f_12_700,
                                                          forceColor: askJoin ==
                                                                  true
                                                              ? AppColors
                                                                  .primaryColor
                                                              : AppColors.grey,
                                                        ),
                                                      ],
                                                    )),
                                                padHorizontal(20),
                                                GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        askJoin = false;
                                                      });
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          askJoin == false
                                                              ? Icons
                                                                  .radio_button_checked_outlined
                                                              : Icons
                                                                  .radio_button_off_outlined,
                                                          color: askJoin ==
                                                                  false
                                                              ? AppColors
                                                                  .primaryColor
                                                              : AppColors.grey,
                                                        ),
                                                        padHorizontal(5),
                                                        Label(
                                                          txt: "Open to all",
                                                          type: TextTypes
                                                              .f_12_700,
                                                          forceColor:
                                                              askJoin == false
                                                                  ? AppColors
                                                                      .primaryColor
                                                                  : AppColors
                                                                      .grey,
                                                        ),
                                                      ],
                                                    ))
                                              ],
                                            ),
                                            padVertical(10),
                                            const Divider(
                                              color: AppColors.lightpercen,
                                            ),
                                            padVertical(10),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        checkBox = !checkBox;
                                                      });
                                                    },
                                                    child: Icon(
                                                      checkBox
                                                          ? Icons
                                                              .check_box_outlined
                                                          : Icons
                                                              .check_box_outline_blank_outlined,
                                                      size: 25,
                                                      color: checkBox
                                                          ? AppColors
                                                              .primaryColor
                                                          : AppColors.grey,
                                                    )),
                                                padHorizontal(5),
                                                const Label(
                                                  txt: "Add your friends",
                                                  type: TextTypes.f_12_500,
                                                  forceColor: AppColors.grey,
                                                )
                                              ],
                                            ),
                                            padVertical(10),
                                            Row(children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.addbtn,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    child:
                                                        const Icon(Icons.add),
                                                  ),
                                                  const Label(
                                                    txt: "Available",
                                                    type: TextTypes.f_10_400,
                                                    forceColor:
                                                        AppColors.primaryColor,
                                                  )
                                                ],
                                              ),
                                              padHorizontal(10),
                                              Column(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.addbtn,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    child:
                                                        const Icon(Icons.add),
                                                  ),
                                                  const Label(
                                                    txt: "Available",
                                                    type: TextTypes.f_10_400,
                                                    forceColor:
                                                        AppColors.primaryColor,
                                                  )
                                                ],
                                              )
                                            ]),
                                          ])),
                                  Container(
                                      width: double.infinity,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightGrey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Label(
                                                    txt: "Match Type",
                                                    type: TextTypes.f_14_700,
                                                  ),
                                                  Icon(
                                                    Icons.info_outlined,
                                                    size: 18,
                                                    color: AppColors.blackColor,
                                                  ),
                                                ]),
                                            padVertical(5),
                                            Container(
                                              width: double.infinity,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                              decoration: BoxDecoration(
                                                color: AppColors.whiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                      child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        selectedButton2 = 0;
                                                      });
                                                    },
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 12),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            selectedButton2 == 0
                                                                ? AppColors
                                                                    .blue2
                                                                : Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        boxShadow:
                                                            selectedButton2 == 0
                                                                ? [
                                                                    const BoxShadow(
                                                                        color: Colors
                                                                            .black12,
                                                                        blurRadius:
                                                                            2)
                                                                  ]
                                                                : null,
                                                      ),
                                                      child: Center(
                                                        child: Label(
                                                            txt: "Friendly",
                                                            forceColor:
                                                                selectedButton2 ==
                                                                        0
                                                                    ? AppColors
                                                                        .whiteColor
                                                                    : AppColors
                                                                        .grey,
                                                            type: TextTypes
                                                                .f_12_500),
                                                      ),
                                                    ),
                                                  )),
                                                  const SizedBox(width: 10),
                                                  Expanded(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          selectedButton2 = 1;
                                                        });
                                                      },
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 12),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              selectedButton2 ==
                                                                      1
                                                                  ? AppColors
                                                                      .blue2
                                                                  : Colors
                                                                      .white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          boxShadow:
                                                              selectedButton2 ==
                                                                      1
                                                                  ? [
                                                                      const BoxShadow(
                                                                          color: Colors
                                                                              .black12,
                                                                          blurRadius:
                                                                              2)
                                                                    ]
                                                                  : null,
                                                        ),
                                                        child: Center(
                                                          child: Label(
                                                              txt:
                                                                  "Competitive",
                                                              forceColor:
                                                                  selectedButton2 ==
                                                                          1
                                                                      ? AppColors
                                                                          .whiteColor
                                                                      : AppColors
                                                                          .grey,
                                                              type: TextTypes
                                                                  .f_12_500),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ])),
                                  Container(
                                    width: double.infinity,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Label(
                                              txt: "Skill Required",
                                              type: TextTypes.f_14_700,
                                            ),
                                            Icon(
                                              Icons.info_outlined,
                                              size: 18,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        padVertical(20),
                                        Row(children: [
                                          Expanded(
                                              child: Container(
                                            height: 15,
                                            decoration: const BoxDecoration(
                                              color: AppColors.slidercon,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10)),
                                            ),
                                            child: Slider(
                                              value: _progressValue,
                                              min: 0,
                                              max: 100,
                                              divisions: 100,
                                              label:
                                                  "${_progressValue.toInt()}%",
                                              onChanged: (value) {
                                                setState(() {
                                                  _progressValue = value;
                                                });
                                              },
                                              activeColor:
                                                  AppColors.primaryColor,
                                              inactiveColor: AppColors.sliderin,
                                            ),
                                          )),
                                          Container(
                                            height: 45,
                                            width: 45,
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: AppColors.slidercon,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: AppColors.lightpercen,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: const [
                                                    BoxShadow(
                                                        color: Colors.black12,
                                                        blurRadius: 2)
                                                  ]),
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Label(
                                                    txt:
                                                        "${_progressValue.toInt()}%",
                                                    type: TextTypes.f_10_600,
                                                  )),
                                            ),
                                          )
                                        ])
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      width: double.infinity,
                                      child: commonButton(
                                          context: context,
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PgConfirmpayment(),
                                              ),
                                            );
                                          },
                                          txt: "Continue")),
                                  padVertical(10)
                                ]),
                    ])))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
