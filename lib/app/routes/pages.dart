import 'package:app_gemini_chat/app/bindings/home_binding.dart';
import 'package:app_gemini_chat/app/ui/pages/home_page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    )
  ];
}
