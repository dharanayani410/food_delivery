import 'package:get/get.dart';

import '../models/food_modal.dart';

class ButtonController extends GetxController {
  RxInt tap = 0.obs;
  RxBool pressOn = false.obs;

  toggle({required int i}) {
    tap(i);
  }

  press({required FoodModal food}) {
    pressOn(true);
  }
}
