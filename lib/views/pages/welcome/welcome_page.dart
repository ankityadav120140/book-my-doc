import 'package:book_my_doc/consts/colors.dart';
import 'package:book_my_doc/views/pages/doc/auth/login/doctor_login.dart';
import 'package:book_my_doc/views/widgets/welcome_main_card.dart';
import 'package:book_my_doc/views/widgets/white_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      body: Padding(
        padding: EdgeInsets.all(1.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  WhiteBox(
                    margin: EdgeInsets.only(left: 2.w),
                    child: Text(
                      "Continue as :",
                      style: Get.textTheme.headlineLarge,
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  mainCard(
                      img: 'assets/logo/doc_logo.png',
                      txt: 'Doctor',
                      onTap: () {
                        Get.off(const DocLoginPage());
                      }),
                  mainCard(
                    icon: Icons.person,
                    txt: 'User',
                    onTap: () {
                      Get.off(const DocLoginPage());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
