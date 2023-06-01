import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/global.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Home",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: Global.category
                        .map((e) => Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.toNamed('/food',
                                          arguments: e['list']);
                                    },
                                    child: CircleAvatar(
                                      radius: 30,
                                      foregroundImage: NetworkImage(
                                        e['image'],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(e['food']),
                              ],
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Food",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: Global.category.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, i) {
                        return Card(
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        foregroundImage: NetworkImage(
                                          Global.category[i]['image'],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            CupertinoIcons.heart_fill,
                                            size: 20,
                                          ))
                                    ]),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      height: 30,
                                      child: Text(Global.category[i]['name']),
                                    ),
                                    Container(
                                        alignment: Alignment.centerRight,
                                        width: 35,
                                        height: 30,
                                        child: Text(
                                            "₹ ${Global.category[i]['price']}"))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 110,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            Global.category[i]['time'],
                                            style:
                                                const TextStyle(fontSize: 10),
                                          ),
                                          Text(
                                            "⭐(${Global.category[i]['rating']})",
                                            style:
                                                const TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 30,
                                        width: 30,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffE7991D),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          )),
    );
  }
}
