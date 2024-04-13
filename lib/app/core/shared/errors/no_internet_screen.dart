// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constants/styles/text_styles.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget stepWidget(String stepText) => Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline_rounded,
              color: Color.fromARGB(255, 107, 105, 105),
              size: 20.sp,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              stepText,
              style: h4BoldBlack,
            ),
          ],
        );
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.wifi_off,
              color: Colors.grey,
              size: 80.sp,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "لا يوجد اتصال بالانترنت".tr,
                style: h3BoldGrey,
              ),
            ),
            stepWidget("(router or modem) تحقق من جهاز".tr),
            SizedBox(height: 15.h),
            stepWidget("او أعد الاتصال بشبكة Wifi او بيانات الهاتف او".tr),
          ],
        ),
      ),
    );
  }
}
