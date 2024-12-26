import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:badminton/app_settings/constants/common_button.dart';

import 'package:flutter/material.dart';

class PgConfirmpayment extends StatefulWidget {
  const PgConfirmpayment({super.key});

  @override
  State<PgConfirmpayment> createState() => _PgConfirmpaymentState();
}

class _PgConfirmpaymentState extends State<PgConfirmpayment> {
  int selectedButton2 = 0;

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
                          txt: "Booking",
                          type: TextTypes.f_18_600,
                        ),
                      ]),
                      padVertical(15),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Label(
                                  txt: "Booking Summary",
                                  type: TextTypes.f_14_700,
                                ),
                                padVertical(5),
                                const Divider(),
                                padVertical(5),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      AppAssets.rankProfile,
                                      width: double.infinity,
                                      height: 112,
                                      fit: BoxFit.cover,
                                    )),
                                padVertical(10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Label(
                                            txt: "Padel Game",
                                            type: TextTypes.f_18_600,
                                          ),
                                          Label(
                                            txt: "Sector 24, Chandigarh",
                                            type: TextTypes.f_14_700,
                                          ),
                                        ]),
                                    Image.asset(
                                      AppAssets.watch,
                                      width: 27,
                                      height: 27,
                                      fit: BoxFit.contain,
                                    )
                                  ],
                                ),
                                padVertical(6),
                                Row(
                                  children: [
                                    Row(children: [
                                      const Icon(
                                        Icons.calendar_today_outlined,
                                        color: AppColors.grey,
                                        size: 15,
                                      ),
                                      padHorizontal(5),
                                      const Label(
                                        txt: "17 Sept 2024",
                                        type: TextTypes.f_12_500,
                                        forceColor: AppColors.grey,
                                      ),
                                    ]),
                                    padHorizontal(20),
                                    Row(children: [
                                      const Icon(
                                        Icons.watch_later_outlined,
                                        color: AppColors.grey,
                                        size: 15,
                                      ),
                                      padHorizontal(5),
                                      const Label(
                                        txt: "09:00 AM",
                                        type: TextTypes.f_12_500,
                                        forceColor: AppColors.grey,
                                      ),
                                    ]),
                                  ],
                                )
                              ])),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Label(
                                        txt: "Add Equipment",
                                        type: TextTypes.f_14_700,
                                      ),
                                      Icon(
                                        Icons.info_outline,
                                        size: 17,
                                      )
                                    ]),
                                padVertical(5),
                                const Divider(),
                                Container(
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedButton2 = 0;
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12),
                                          decoration: BoxDecoration(
                                            color: selectedButton2 == 0
                                                ? AppColors.blue2
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            boxShadow: selectedButton2 == 0
                                                ? [
                                                    const BoxShadow(
                                                        color: Colors.black12,
                                                        blurRadius: 2)
                                                  ]
                                                : null,
                                          ),
                                          child: Center(
                                            child: Label(
                                                txt: "Rent",
                                                forceColor: selectedButton2 == 0
                                                    ? AppColors.whiteColor
                                                    : AppColors.grey,
                                                type: TextTypes.f_12_500),
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
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12),
                                            decoration: BoxDecoration(
                                              color: selectedButton2 == 1
                                                  ? AppColors.blue2
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              boxShadow: selectedButton2 == 1
                                                  ? [
                                                      const BoxShadow(
                                                          color: Colors.black12,
                                                          blurRadius: 2)
                                                    ]
                                                  : null,
                                            ),
                                            child: Center(
                                              child: Label(
                                                  txt: "No, I’ll bring my own",
                                                  forceColor:
                                                      selectedButton2 == 1
                                                          ? AppColors.whiteColor
                                                          : AppColors.grey,
                                                  type: TextTypes.f_12_500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                padVertical(6),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      const Icon(
                                        Icons.check_box_outline_blank_outlined,
                                        color: AppColors.grey,
                                        size: 17,
                                      ),
                                      padHorizontal(5),
                                      const Label(
                                        txt: "Racket",
                                        type: TextTypes.f_14_500,
                                        forceColor: AppColors.grey,
                                      ),
                                    ]),
                                    padHorizontal(20),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                          color: AppColors.lightpercen,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1, color: AppColors.grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Label(
                                              txt: '-',
                                              type: TextTypes.f_16_600),
                                          padHorizontal(10),
                                          Container(
                                            height: 20,
                                            width: 1,
                                            decoration: BoxDecoration(
                                              color: AppColors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          padHorizontal(10),
                                          const Label(
                                              txt: '0',
                                              type: TextTypes.f_16_600),
                                          padHorizontal(10),
                                          Container(
                                            height: 20,
                                            width: 1,
                                            decoration: BoxDecoration(
                                              color: AppColors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          padHorizontal(10),
                                          const Label(
                                              txt: '+',
                                              type: TextTypes.f_16_600)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                padVertical(10),
                                Row(children: [
                                  const Icon(
                                    Icons.check_box_outline_blank_outlined,
                                    color: AppColors.grey,
                                    size: 17,
                                  ),
                                  padHorizontal(5),
                                  const Label(
                                    txt: "Ball",
                                    type: TextTypes.f_14_500,
                                    forceColor: AppColors.grey,
                                  ),
                                ]),
                              ])),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Label(
                                        txt: "Pay",
                                        type: TextTypes.f_14_700,
                                      ),
                                      Icon(
                                        Icons.info_outline,
                                        size: 17,
                                      )
                                    ]),
                                padVertical(5),
                                const Divider(),
                                padVertical(5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: AppColors.border,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Container(
                                            padding: const EdgeInsets.all(7),
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                      ),
                                      padHorizontal(15),
                                      const Label(
                                        txt: "Pay Booking Amount",
                                        type: TextTypes.f_14_500,
                                      ),
                                    ]),
                                    const Label(
                                      txt: "₹800",
                                      type: TextTypes.f_14_700,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: AppColors.border,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Container(
                                            padding: const EdgeInsets.all(7),
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                      ),
                                      padHorizontal(15),
                                      const Label(
                                        txt: "Pay everything",
                                        type: TextTypes.f_14_500,
                                      ),
                                    ]),
                                    const Label(
                                      txt: "₹1600",
                                      type: TextTypes.f_14_700,
                                    ),
                                  ],
                                )
                              ])),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Label(
                                txt: "Cancellation Policy",
                                type: TextTypes.f_14_700,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 25,
                              )
                            ]),
                      ),
                      padVertical(10),
                      SizedBox(
                          width: double.infinity,
                          child: commonButton(
                            txt: "Confirm & Pay",
                            onPressed: () {},
                          ))
                    ]))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
