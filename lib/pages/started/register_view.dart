import 'package:fitness/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bodyHeader(),
            bodyForm(),
            buttonAction(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget bodyHeader() {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.55,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/black/4.jpg"),
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
                const SizedBox(height: 10),
                RichText(
                  text: const TextSpan(
                    text: 'TNT\t',
                    style: TextStyle(
                        fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
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
                        "Registrarse",
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
    );
  }

  Widget bodyForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Nombre",
            style: TextStyle(color: Color(0xFF707070), fontSize: 18),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF707070)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF707070)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Email",
            style: TextStyle(color: Color(0xFF707070), fontSize: 18),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "GG.id@gmail.com",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF707070)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF707070)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Telefono",
            style: TextStyle(color: Color(0xFF707070), fontSize: 18),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF707070)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF707070)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Password",
            style: TextStyle(color: Color(0xFF707070), fontSize: 18),
          ),
          TextField(
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
          SizedBox(height: 10),
          Text(
            "Confirmar Password",
            style: TextStyle(color: Color(0xFF707070), fontSize: 18),
          ),
          TextField(
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
          SizedBox(height: 23),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Al registrarme, acepto el Acuerdo de usuario y la Política de privacidad de TNT GYM",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonAction() {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 27),
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
                  "Registrarse",
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
              width: Get.size.width * 0.7,
              child: const Center(
                child: Text(
                  "Cancelar",
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
    );
  }
}
