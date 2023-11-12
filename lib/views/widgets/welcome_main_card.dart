import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../consts/colors.dart';

Widget mainCard({
  String? img,
  IconData? icon,
  String? txt,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 45.w,
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.red.withOpacity(0.5),
            blurRadius: 10.sp,
            spreadRadius: 5.sp,
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              if (img != null) Image.asset(img),
              if (icon != null)
                Icon(
                  icon,
                  size: 130.sp,
                ),
              SizedBox(height: 3.h),
              if (txt != null)
                Text(
                  txt,
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.sp,
                    fontSize: 20.sp,
                    shadows: [
                      BoxShadow(
                          color: AppColors.red.withOpacity(0.4),
                          blurRadius: 5.sp,
                          spreadRadius: 2.sp),
                    ],
                  ),
                ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.red),
            ),
            child: const SizedBox.expand(),
          ),
        ],
      ),
    ),
  );
}
