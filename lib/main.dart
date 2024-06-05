import 'package:app_gemini_chat/app/routes/pages.dart';
import 'package:app_gemini_chat/app/ui/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    theme: appThemeData,
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fadeIn,
    initialRoute: Routes.ONBOARDING,
    getPages: AppPages.pages,
  ));
}
