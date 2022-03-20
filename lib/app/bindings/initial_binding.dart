import 'package:flutterassignment/app/controllers/cart_controller.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CartController(), permanent: true);

    // User
  }
}
