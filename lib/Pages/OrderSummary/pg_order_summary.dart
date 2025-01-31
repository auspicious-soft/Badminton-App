import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:flutter/material.dart';

class PgOrderSummary extends StatefulWidget {
  const PgOrderSummary({super.key});

  @override
  State<PgOrderSummary> createState() => _PgOrderSummaryState();
}

class _PgOrderSummaryState extends State<PgOrderSummary> {
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
                  txt: "Order Summary",
                  type: TextTypes.f_18_600,
                ),
              ]),
              padVertical(20),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
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
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black12, blurRadius: 2)
                                    ],
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.asset(
                                    width: 50,
                                    height: 50,
                                    AppAssets.rankProfile,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                padHorizontal(10),
                                const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Label(
                                        txt: "HEAD Radical Elite.....",
                                        type: TextTypes.f_14_600,
                                      ),
                                      Label(
                                        txt: "₹6250.00",
                                        type: TextTypes.f_12_700,
                                        forceColor: AppColors.smalltxt,
                                      )
                                    ]),
                              ]),
                              padHorizontal(10),
                              Row(
                                children: [
                                  Image.asset(
                                    AppAssets.less,
                                    fit: BoxFit.contain,
                                    height: 20,
                                    width: 20,
                                  ),
                                  padHorizontal(10),
                                  const Label(
                                    txt: "2",
                                    type: TextTypes.f_20_600,
                                    forceColor: AppColors.blue2,
                                  ),
                                  padHorizontal(10),
                                  Image.asset(
                                    AppAssets.add,
                                    fit: BoxFit.contain,
                                    height: 20,
                                    width: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ));
                },
              ),
              padVertical(8),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  // padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Label(
                                        txt: "Pickup From",
                                        type: TextTypes.f_12_700,
                                        forceColor: AppColors.smalltxt,
                                      ),
                                      Label(
                                        txt: "Sector 24, Chandigarh",
                                        type: TextTypes.f_14_600,
                                      ),
                                    ]),
                              ]),
                              padHorizontal(10),
                            ],
                          )),
                      const Divider(),
                      const Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Label(
                                        txt: "Contact",
                                        type: TextTypes.f_12_700,
                                        forceColor: AppColors.smalltxt,
                                      ),
                                      Label(
                                        txt: "+91 25786 45879",
                                        type: TextTypes.f_14_600,
                                      ),
                                    ]),
                              ]),
                            ],
                          )),
                      const Divider(),
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Label(
                                        txt: "Total Bill Amount",
                                        type: TextTypes.f_12_700,
                                        forceColor: AppColors.smalltxt,
                                      ),
                                      Label(
                                        txt: "Inclusive of all taxes: ₹6250.00",
                                        type: TextTypes.f_14_600,
                                      ),
                                    ]),
                              ]),
                              padHorizontal(10),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.blue,
                                size: 20,
                              ),
                            ],
                          )),
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
