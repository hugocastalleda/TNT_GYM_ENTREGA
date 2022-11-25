import 'package:fitness/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/black/9.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kThirdColor.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                      text: 'TNT\t',
                      style: TextStyle(
                        fontFamily: "Bebas",
                        fontSize: 30,
                        letterSpacing: 5,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'GYM',
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
                          "Bienvenid@s",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //SizedBox(height: 17),
                        Text(
                          "Entrena y vive la nueva experiencia \nen la ciudad",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  //const SizedBox(height: 30),
                  TextButton(
                    onPressed: () => Get.toNamed(Routes.ABOUT),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kFirstColor,
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const Center(
                        child: Text(
                          "Probar ahora",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(height: 10),
                  TextButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.transparent,
                          border: Border.all(width: 2, color: Colors.white)),
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const Center(
                        child: Text(
                          "Iniciar sesion",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //const SizedBox(height: 27),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
