import 'package:app_gemini_chat/app/routes/pages.dart';
import 'package:app_gemini_chat/app/ui/themes/dark_theme.dart';
import 'package:app_gemini_chat/app/ui/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 10));
  FlutterNativeSplash.remove();
  runApp(GetMaterialApp(
    theme: lightMode,
    darkTheme: darkMode,
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fadeIn,
    initialRoute: Routes.ONBOARDING,
    getPages: AppPages.pages,
  ));
}
