import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/loading/lottie_loading.dart';
import '../../../../../core/constants/screen_dimensions.dart';
import '../../../../../core/constants/styles/button_styles.dart';
import '../../../controllers/state_management/register_controller.dart';
import '../shared/phone_country_input.dart';
import '../shared/register_educational_information.dart';
import '../shared/register_personal_information.dart';

class TeacherRegister extends GetView<RegisterController> {
  const TeacherRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: SizedBox(
        height: pageHeight() * 0.5,
        child: SingleChildScrollView(
          child: Obx(
            () => Container(
              constraints: BoxConstraints(minHeight: pageHeight() * 0.5),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  controller.isFirstRegisterStep.value
                      ? const PhoneCountryInput()
                      : const RegisterEducationalInfo(isTeacher: true),
                  (controller.isFirstRegisterStep.value)
                      ? const RegisterPersonalInfo(
                          isTeacher: true,
                        )
                      : const SizedBox(),
                  Obx(
                    () => controller.registerController.isRegistering.value
                        ? SmallLottieLoading()
                        : ElevatedButton(
                            onPressed: controller.isSnackBarOpen.value
                                ? null
                                : controller.isFirstRegisterStep.value
                                    ? controller.nextRegisterStep
                                    : controller.teacherRegister,
                            style: primaryButtonStyle,
                            child: Text(
                              controller.isFirstRegisterStep.value
                                  ? "التالي".tr
                                  : "تسجيل حساب جديد".tr,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
