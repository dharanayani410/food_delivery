import 'package:food_delivery/models/food_modal.dart';
import 'package:get/get.dart';

class FavController extends GetxController {
  RxList<FoodModal> fav = <FoodModal>[].obs;

  addToFav({required FoodModal food}) {
    if (fav.contains(food)) {
      Get.snackbar(food.name, 'Already added in Favourite..',
          snackPosition: SnackPosition.BOTTOM);
    } else {
      fav.add(food);
      Get.snackbar(food.name, 'Added successfully',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  removeFromFav({required FoodModal food}) {
    fav.remove(food);
    Get.snackbar(food.name, 'Remove from Favourite Successfully..',
        snackPosition: SnackPosition.BOTTOM);
  }
}
