import 'package:badminton/Pages/Merchandise/Widgets/card_list.dart';
import 'package:badminton/Pages/Merchandise/Widgets/filter_button.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/components/widget_global_margin.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:flutter/material.dart';

class PgMerchandise extends StatefulWidget {
  const PgMerchandise({super.key});

  @override
  State<PgMerchandise> createState() => _PgMerchandiseState();
}

class _PgMerchandiseState extends State<PgMerchandise> {
  int selectedButton = 0;
  int selectedButton2 = 0;

  final List<Map<String, String>> products = [
    {
      "name": "HEAD Radical Elite 2024 Padel Racquet",
      "price": "₹15,749",
      "oldPrice": "₹20,999",
      "image": AppAssets.rankProfile,
    },
    {
      "name": "HEAD Radical Elite 2024 Padel Racquet",
      "price": "₹15,749",
      "oldPrice": "₹20,999",
      "image": AppAssets.rankProfile,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: WidgetGlobalMargin(
            child: Column(
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
                        padHorizontal(10),
                        const Label(
                          txt: "Merchandise",
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
                          Icons.shopping_cart,
                          color: AppColors.smalltxt,
                        )
                      ]),
                    ]),
                padVertical(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            FilterButton(label: "All", isSelected: true),
                            FilterButton(label: "Paddle"),
                            FilterButton(label: "Pickleball"),
                            FilterButton(label: "Bags"),
                          ],
                        ),
                      ),
                      Image.asset(
                        AppAssets.more,
                        fit: BoxFit.contain,
                        width: 20,
                        height: 20,
                        color: AppColors.darkprimary,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.70,
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return ProductCard(
                          image: product["image"]!,
                          name: product["name"]!,
                          price: product["price"]!,
                          oldPrice: product["oldPrice"]!,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
