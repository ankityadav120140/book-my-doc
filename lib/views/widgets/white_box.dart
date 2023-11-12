import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../consts/colors.dart';

class WhiteBox extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const WhiteBox({
    super.key,
    required this.child,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.pureWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.red,
            blurRadius: 10.sp,
            spreadRadius: 2.sp,
          ),
        ],
      ),
      child: child,
    );
  }
}
