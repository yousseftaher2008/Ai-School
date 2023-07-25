import 'package:get/get.dart';

import '../controllers/image_input_controller.dart';
import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.lazyPut<ImageInputController>(
      () => ImageInputController(),
    );
  }
}
