import 'package:badminton/Pages/BlockList/pg_block_list.dart';
import 'package:badminton/Pages/FriendRequests/pg_friend_requests.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:flutter/material.dart';

class PgFriends extends StatefulWidget {
  const PgFriends({super.key});

  @override
  State<PgFriends> createState() => _PgFriendsState();
}

class _PgFriendsState extends State<PgFriends> {
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
                          txt: "All Friends",
                          type: TextTypes.f_18_600,
                        ),
                      ]),
                      padVertical(20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PgBlockList(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1,
                              )),
                          child: const Label(
                            txt: "View Blocklist",
                            type: TextTypes.f_12_400,
                          ),
                        ),
                      ),
                      padVertical(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Label(
                            txt: "Friend Requests",
                            type: TextTypes.f_14_600,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PgFriendRequests(),
                                ),
                              );
                            },
                            child: const Label(
                              txt: "View All",
                              type: TextTypes.f_10_600,
                            ),
                          )
                        ],
                      ),
                      padVertical(15),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
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
                      padVertical(15),
                      const Label(
                        txt: "Friends",
                        type: TextTypes.f_14_600,
                      ),
                      padVertical(15),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
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
                                              width: 28,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                color: AppColors.blue2,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: const Icon(
                                                Icons.messenger_outline_rounded,
                                                color: AppColors.whiteColor,
                                                size: 12,
                                              )),
                                          padHorizontal(10),
                                          Image.asset(
                                            AppAssets.option,
                                            fit: BoxFit.contain,
                                            width: 10,
                                            height: 15,
                                          )
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
