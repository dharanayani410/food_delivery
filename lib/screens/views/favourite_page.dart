import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/favourite_controller.dart';
import 'package:get/get.dart';

class Fav extends StatelessWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FavController controller = Get.put(FavController());
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_circle_left_outlined)),
                Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red.shade600,
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xffE7991D),
              ),
              child: const Text(
                "Favourite",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 700,
              child: Obx(
                () => ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      height: 150,
                      width: double.infinity,
                      color: Colors.blue,
                      child: Text(
                        controller.fav[i].name,
                      ),
                    );
                  },
                  itemCount: controller.fav.length,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
