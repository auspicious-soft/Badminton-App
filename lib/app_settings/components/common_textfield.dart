import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_const.dart';
import 'package:flutter/material.dart';

Widget commonTxtField({
  String? hTxt,
  keyboardType,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    height: 50,
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hTxt,
        hintStyle: const TextStyle(
          color: AppColors.smalltxt,
          fontFamily: AppConst.fontFamily,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: const TextStyle(
        color: AppColors.blackColor,
        fontFamily: AppConst.fontFamily,
        fontWeight: FontWeight.w500,
      ),
      keyboardType: keyboardType,
    ),
  );
}
