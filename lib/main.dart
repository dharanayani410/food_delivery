import 'package:flutter/material.dart';
import 'package:food_delivery/screens/views/homepage.dart';
import 'package:food_delivery/screens/views/splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(
          name: '/splash',
          page: () => const Splash(),
        ),
        GetPage(name: '/home_page', page: () => const HomePage())
      ],
    );
  }
}
