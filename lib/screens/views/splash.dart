import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/salad.png.png'),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Fast delivery at\nyour doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Home delivery and online reservation\nsystem for restaurants & cafe",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 10),
            ),
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white70,
                  foregroundColor: Colors.green.shade900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(horizontal: 100)),
              child: const Text("Let's Explore"),
            )
          ],
        ),
      ),
    ));
  }
}
