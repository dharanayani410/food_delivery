import 'package:get/get.dart';

class ButtonController extends GetxController {
  RxInt tap = 0.obs;

  toggle({required int i}) {
    tap(i);
  }
}
