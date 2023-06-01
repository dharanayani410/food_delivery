import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/controllers/button_controller.dart';
import 'package:food_delivery/controllers/favourite_controller.dart';
import 'package:food_delivery/models/food_modal.dart';
import 'package:food_delivery/models/global.dart';
import 'package:get/get.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FoodModal> data =
        ModalRoute.of(context)!.settings.arguments as List<FoodModal>;
    ButtonController controller = Get.find<ButtonController>();
    FavController fav = Get.put(FavController());
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Details",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
            ),
            body: Stack(alignment: Alignment.bottomCenter, children: [
              ListView(
                padding: const EdgeInsets.all(10),
                physics: const BouncingScrollPhysics(),
                children: data
                    .map((e) => Card(
                          margin: const EdgeInsets.all(10),
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(top: 10),
                            height: 160,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 110,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          e.image,
                                        ),
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 180,
                                        child: Text(
                                          e.name,
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text("${e.rating}"),
                                          RatingBarIndicator(
                                            itemBuilder: (context, i) {
                                              return const Icon(
                                                Icons.star,
                                                color: Color(0xffE7991D),
                                              );
                                            },
                                            itemSize: 15,
                                            itemCount: 5,
                                            rating: e.rating,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("₹ ${e.price}"),
                                      Container(
                                        width: 180,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  fav.addToFav(food: e);
                                                },
                                                icon: const Icon(
                                                    CupertinoIcons.heart_fill)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons
                                                    .shopping_cart_rounded)),
                                          ],
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),

              // Container(
              //   height: 50,
              //   color: Colors.white,
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: Global.buttons
              //           .map((e) => Obx(
              //                 () => IconButton(
              //                   onPressed: () {
              //                     controller.toggle(i: e['index']);
              //                     print(controller.tap);
              //
              //                     Get.toNamed(e['key']);
              //                   },
              //                   icon: e['icon'],
              //                   color: (controller.tap == e['index'])
              //                       ? const Color(0xffE7991D)
              //                       : Colors.black,
              //                 ),
              //               ))
              //           .toList()),
              // ),
            ])));
  }
}
