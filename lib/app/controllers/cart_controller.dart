import 'package:flutterassignment/app/models/items_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var _products = {}.obs;

  void addItem(ItemsModel product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 0;
    }
    Get.snackbar(
      'Product Added',
      "you have added the ${product.name} to cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 1),
    );
  }

  void removeProduct(ItemsModel product) {
    if (_products.containsKey(product) && _products[product] == 0) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get product => _products;
}
