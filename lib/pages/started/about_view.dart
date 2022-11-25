import 'package:fitness/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/black/16.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
                          "Acerca de ti",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Queremos saber más de tu expeiencia en deporte \nselecciona una delas opciones",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),

                  ///const SizedBox(height: 30),
                  ValueBuilder<int?>(
                    initialValue: 0,
                    builder: (value, updateFn) => Row(
                      children: [
                        OptionWidget(
                          state: "poca\nExperiencia",
                          detail: "he entrenado algunas veces",
                          enable: value == 0 ? true : false,
                          onTap: () => updateFn(0),
                        ),
                        const SizedBox(width: 25),
                        OptionWidget(
                          state: "tengo\nExperiencia",
                          detail: "he entrenado muchas veces",
                          enable: value == 1 ? true : false,
                          onTap: () => updateFn(1),
                        ),
                      ],
                    ),
                  ),
                  //const SizedBox(height: 30),
                  buildFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooter() {
    return Row(
      children: [
        TextButton(
          onPressed: () => Get.back(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Center(
              child: Text(
                "Atras",
                style: TextStyle(
                  color: Color.fromARGB(255, 245, 243, 243),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () => Get.offAllNamed(Routes.WELCOME),
          child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kFirstColor,
            ),
            child: const Center(
              child: Text(
                "Siguiente",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
