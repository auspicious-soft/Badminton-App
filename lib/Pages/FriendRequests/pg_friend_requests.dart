import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';

import 'package:flutter/material.dart';

class PgFriendRequests extends StatefulWidget {
  const PgFriendRequests({super.key});

  @override
  State<PgFriendRequests> createState() => _PgFriendRequestsState();
}

class _PgFriendRequestsState extends State<PgFriendRequests> {
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
                          txt: "Friend Requests",
                          type: TextTypes.f_18_600,
                        ),
                      ]),
                      padVertical(20),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Container(
                              decoration: const BoxDecoration(),
                              child: Column(children: [
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              child: Image.asset(
                                                AppAssets.racket,
                                                fit: BoxFit.contain,
                                                width: 35,
                                                height: 35,
                                              )),
                                          padHorizontal(8),
                                          const Label(
                                              txt: "Rowan Lopez",
                                              type: TextTypes.f_14_700),
                                        ]),
                                        Row(children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 5),
                                            decoration: BoxDecoration(
                                              color: AppColors.blue2,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: const Label(
                                              txt: "Confirm",
                                              type: TextTypes.f_10_600,
                                              forceColor: AppColors.whiteColor,
                                            ),
                                          ),
                                          padHorizontal(10),
                                          const Icon(Icons.cancel)
                                        ])
                                      ],
                                    )),
                                padVertical(8),
                                const Divider(),
                                padVertical(8),
                              ]));
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
