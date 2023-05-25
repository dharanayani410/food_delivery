import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_modal.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FoodModal> data =
        ModalRoute.of(context)!.settings.arguments as List<FoodModal>;
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
            body: ListView(
              padding: const EdgeInsets.all(10),
              physics: const BouncingScrollPhysics(),
              children: data
                  .map((e) => Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 10,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(top: 10),
                          height: 150,
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
                              Text(
                                e.name,
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            )));
  }
}
