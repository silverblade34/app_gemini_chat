import 'package:app_gemini_chat/app/controllers/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardingBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}