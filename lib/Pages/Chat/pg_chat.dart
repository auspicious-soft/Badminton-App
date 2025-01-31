import 'package:badminton/Pages/ProfileDetail/pg_profile_detail.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_const.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:flutter/material.dart';

class PgChat extends StatefulWidget {
  const PgChat({super.key});

  @override
  State<PgChat> createState() => _PgChatState();
}

class _PgChatState extends State<PgChat> {
  // Sample chat data
  final List<Map<String, dynamic>> messages = [
    {"isMe": false, "text": "Sam, are you ready? 😂😂", "time": "15:18"},
    {"isMe": true, "text": "Actually yes, lemme see..", "time": "15:18"},
    {"isMe": true, "text": "Done, I just finished it! 😅😅", "time": "15:19"},
    {"isMe": false, "text": "Nah, it's crazy 😅", "time": "15:20"},
    {"isMe": false, "text": "Cheating?", "time": "15:20"},
    {"isMe": true, "text": "No way, lol", "time": "15:20"},
    {"isMe": true, "text": "I'm a pro, that's why 😎", "time": "15:20"},
    {"isMe": false, "text": "Still, can't believe 😂", "time": "15:21"},
    {"isMe": true, "text": "Read about inflation news, now!!", "time": "15:22"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
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
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PgProfileDetail(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.more_vert,
                          color: AppColors.smalltxt,
                        ))
                  ]),
                ],
              ),
            ),

            // Chat messages
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  final message = messages[index];
                  final isMe = message['isMe'] as bool;

                  return Align(
                      alignment:
                          isMe ? Alignment.centerRight : Alignment.centerLeft,
                      child: Column(
                          crossAxisAlignment: isMe
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                          children: [
                            isMe
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 5),
                                          padding: const EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                            color: AppColors.blue2,
                                            borderRadius:
                                                BorderRadius.circular(10)
                                                    .copyWith(
                                                        topRight: Radius.zero,
                                                        topLeft: const Radius
                                                            .circular(10)),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Label(
                                                  txt:
                                                      message['text'] as String,
                                                  type: TextTypes.f_14_500,
                                                  forceColor:
                                                      AppColors.whiteColor)
                                            ],
                                          ),
                                        ),
                                        Label(
                                          txt: message['time'] as String,
                                          type: TextTypes.f_12_400,
                                          forceColor: isMe
                                              ? AppColors.blue2
                                              : AppColors.grey,
                                        )
                                      ])
                                : Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30)),
                                          child: Image.asset(
                                            AppAssets.rankProfile,
                                            fit: BoxFit.fill,
                                            height: 28,
                                            width: 28,
                                          ),
                                        ),
                                        padHorizontal(5),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              padding: const EdgeInsets.all(12),
                                              decoration: BoxDecoration(
                                                color: const Color(0x19176DBF),
                                                borderRadius:
                                                    BorderRadius.circular(10)
                                                        .copyWith(
                                                  topRight:
                                                      const Radius.circular(10),
                                                  topLeft: Radius.zero,
                                                ),
                                              ),
                                              child: Column(
                                                crossAxisAlignment: isMe
                                                    ? CrossAxisAlignment.end
                                                    : CrossAxisAlignment.start,
                                                children: [
                                                  Label(
                                                    txt: message['text']
                                                        as String,
                                                    type: TextTypes.f_14_500,
                                                    forceColor:
                                                        AppColors.blackColor,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Label(
                                              txt: message['time'] as String,
                                              type: TextTypes.f_12_400,
                                              forceColor: isMe
                                                  ? AppColors.blue2
                                                  : AppColors.grey,
                                            )
                                          ],
                                        )
                                      ]),
                          ]));
                },
              ),
            ),
            // Message input
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: AppColors.smalltxt,
                              fontFamily: AppConst.fontFamily,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                          hintText: "Type here...",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: AppConst.fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  padHorizontal(10),
                  IconButton(
                    icon: const Icon(Icons.send, color: AppColors.primaryColor),
                    onPressed: () {
                      // Handle send message
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
