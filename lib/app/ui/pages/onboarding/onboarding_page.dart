import 'package:app_gemini_chat/app/controllers/onboarding_controller.dart';
import 'package:app_gemini_chat/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Text(
                  "Tu asistente de IA",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: PRIMARY_LIGHT,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Con este software, puedes dar solución a tus preguntas utilizando el asistente de inteligencia artificial.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Image.asset(
            'assets/onboarding.png',
            width: 200,
          ),
          const SizedBox(
            height: 32,
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/home");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: PRIMARY_LIGHT,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Continuar",
                  style: TextStyle(
                    color: WHITE,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                  color: WHITE,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
