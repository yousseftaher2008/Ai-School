//TODO: default snackBars styles
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/core/constants/styles/colors.dart';
import 'app/core/localization/local.dart';
import 'app/core/localization/translation.dart';
import 'app/core/services/services.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  LocaleController controller = Get.put<LocaleController>(LocaleController());
  runApp(
    ScreenUtilInit(
        designSize: const Size(411, 890),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: "Ai School",
            locale: controller.language,
            translations: MyTranslation(),
            theme: ThemeData(
              primaryColor: primaryColor,
              colorScheme:
                  const ColorScheme.light(secondary: primaryColorLight),
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }),
  );
}
