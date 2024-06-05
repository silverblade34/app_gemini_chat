import 'package:app_gemini_chat/app/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fadeIn,
    initialRoute: Routes.HOME,
    getPages: AppPages.pages,
  ));
}
