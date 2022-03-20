import 'package:flutterassignment/app/views/pages/cart_screen.dart';
import 'package:flutterassignment/app/views/pages/home_screen.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomeScreen(),
      // binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.CARTSCREEN,
      page: () => CartScreen(),
    ),
  ];
}
