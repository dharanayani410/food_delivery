import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool tap = false;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/food.png'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Food ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffE7991D),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Delivery",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff592D00),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  cursorColor: Colors.grey,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    hintText: "User name",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "E-mail",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: Colors.grey,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outlined),
                      hintText: "Password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            tap = true;
                          },
                          icon: Icon(Icons.remove_red_eye_outlined))),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.offAndToNamed('/home_page');
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 140, vertical: 15)),
                  child: const Text("Sign In"),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create an Account?"),
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed('/signUp');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Color(0xffE7991D)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
