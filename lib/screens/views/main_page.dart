import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/button_controller.dart';
import 'package:get/get.dart';

import '../../models/global.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonController controller = Get.put(ButtonController());
    PageController pageController = PageController();
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (val) {},
        children: Global.pages,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: Global.buttons
              .map(
                (e) => BottomNavigationBarItem(
                  icon: e['icon'],
                  label: "",
                ),
              )
              .toList(),
          onTap: (val) {
            controller.toggle(i: val);
            pageController.jumpToPage(val);
          },
          selectedItemColor: const Color(0xffE7991D),
          currentIndex: controller.tap.toInt(),
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
