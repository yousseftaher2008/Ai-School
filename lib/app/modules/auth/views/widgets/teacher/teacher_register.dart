import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_egabat/app/modules/auth/controllers/teacher_controller.dart';
import 'package:my_egabat/app/modules/auth/views/widgets/shared/phone_country_input.dart';
import 'package:my_egabat/app/shared/styles/button_styles.dart';

import '../shared/register_personal_information.dart';

class TeacherRegister extends GetView<TeacherController> {
  const TeacherRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PhoneCountryInput(Get.find<TeacherController>()),
          const RegisterPersonalInformation(
            withImageInput: false,
          ),
          Obx(
            () => ElevatedButton(
                onPressed: controller.isFirstRegisterStep.value
                    ? controller.nextRegisterStep
                    : controller.login,
                style: primaryButtonStyle,
                child: Text(
                  controller.isFirstRegisterStep.value
                      ? "التالي"
                      : "انشاء حساب جديد",
                )),
          )
        ],
      ),
    );
  }
}