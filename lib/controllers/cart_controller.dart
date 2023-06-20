import 'package:food_delivery/models/food_modal.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList cart = [].obs;
  RxInt totalAmount = 0.obs;

  addToCart({required FoodModal food}) {
    if (cart.contains(food)) {
      Get.snackbar('Alert', "Cart Already contains ..");
    } else {
      cart.add(food);
      totalAmount += food.price;
      Get.snackbar(food.name, "added successfully..");
    }
  }

  removeFromCart({required FoodModal food}) {
    cart.remove(food);
    totalAmount -= food.price;
  }
}
