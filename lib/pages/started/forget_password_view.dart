import 'package:fitness/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(),
            bodyWidget(),
          ],
        ),
      ),
    );
  }

  Widget headerWidget() {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.55,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/black/14.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                kThirdColor,
                Colors.transparent,
              ],
            ),
          ),
          height: Get.height * 0.55,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                RichText(
                  text: const TextSpan(
                    text: 'HARD\t',
                    style: TextStyle(
                        fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'ELEMENT',
                        style: TextStyle(color: kFirstColor),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Forget Password",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Train and live the new experience of \nexercising"
                        " at home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget bodyWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Email",
            style: TextStyle(color: Color(0xFF707070), fontSize: 18),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: "faisalramdan.id@gmail.com",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF707070)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF707070)),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () => Get.back(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: kFirstColor,
                    ),
                    height: 50,
                    width: Get.width * 0.7,
                    child: const Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () => Get.back(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: kThirdColor,
                      border: Border.all(width: 1, color: kFirstColor),
                    ),
                    height: 50,
                    width: Get.width * 0.7,
                    child: const Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 27),
        ],
      ),
    );
  }
}
