import 'package:fitness/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height * 0.55,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/black/12.jpg"),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        RichText(
                          text: const TextSpan(
                            text: 'TNT\t',
                            style: TextStyle(
                                fontFamily: "Bebas",
                                fontSize: 30,
                                letterSpacing: 5),
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
                                "Iniciar sesion",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Entrena y vive la nueva experiencia \nen la ciudad",
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
            ),
            Padding(
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
                      hintText: "gg.id@gmail.com",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Password",
                    style: TextStyle(color: Color(0xFF707070), fontSize: 18),
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "********",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () => Get.toNamed(Routes.FORGET_PASSWORD),
                        child: const Text(
                          "Olvidaste tu contraseña?",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () => Get.offAllNamed(Routes.WELCOME),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kFirstColor,
                            ),
                            height: 50,
                            width: Get.width * 0.7,
                            child: const Center(
                              child: Text(
                                "Entrar",
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
                          onPressed: () => Get.toNamed(Routes.REGISTER),
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
                                "Registrarse",
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
            ),
          ],
        ),
      ),
    );
  }
}
