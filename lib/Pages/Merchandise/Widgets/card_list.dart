import 'package:badminton/Pages/ProductDetail/pg_product_detail.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_dim.dart';
import 'package:flutter/material.dart';

// Product Card Widget
class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String oldPrice;

  const ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.oldPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PgProductDetail(),
            ),
          );
        },
        child: Card(
            color: AppColors.background,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 2)
                      ],
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(children: [
                      Image.asset(
                        image,
                        width: double.infinity,
                        height: 156,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              AppAssets.cart,
                              fit: BoxFit.contain,
                              width: 30,
                              height: 30,
                            )),
                      )
                    ])),
                padVertical(8),
                const Label(
                    txt: "HEAD Radical Elite 2024 Padel Racquet",
                    type: TextTypes.f_14_600),
                padVertical(5),
                Row(
                  children: [
                    const Label(txt: "₹20,999", type: TextTypes.f_10_400),
                    padHorizontal(10),
                    const Label(txt: "₹15,749", type: TextTypes.f_12_700)
                  ],
                )
              ],
            )));
  }
}
