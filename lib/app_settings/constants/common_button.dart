import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:flutter/material.dart';

Widget commonButton(
    {VoidCallback? onPressed,
    String? txt,
    context,
    Color? forceColor,
    bool? arrow}) {
  return SizedBox(
      height: 56,
      // width: MediaQuery.of(context).size.width / 1.1,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10),
          elevation: 0.0,
          backgroundColor: forceColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: arrow == true
            ? const Icon(
                Icons.arrow_forward,
                color: AppColors.whiteColor,
              )
            : Label(
                txt: txt!,
                type: TextTypes.f_16_600,
                forceColor: AppColors.whiteColor,
              ),
      ));
}
