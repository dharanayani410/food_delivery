import 'package:flutter/material.dart';
import 'package:food_delivery/screens/views/food.dart';
import 'package:food_delivery/screens/views/homepage.dart';
import 'package:food_delivery/screens/views/login.dart';
import 'package:food_delivery/screens/views/sign_up.dart';
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
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: const Color(0xff592D00),
              primary: const Color(0xffE7991D)),
          inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Colors.grey.shade300,
              prefixIconColor: Colors.grey,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)))),
      getPages: [
        GetPage(name: '/splash', page: () => const Splash()),
        GetPage(name: '/home_page', page: () => const HomePage()),
        GetPage(name: '/logIn', page: () => const LogIn()),
        GetPage(name: '/signUp', page: () => const SignUp()),
        GetPage(name: '/food', page: () => const Food()),
      ],
    );
  }
}
