import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/button_controller.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonController controller = Get.find<ButtonController>();
    return SafeArea(
        child: Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.white,
          ),
        ],
      ),
    ));
  }
}
