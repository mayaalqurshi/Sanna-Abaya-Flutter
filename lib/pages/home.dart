import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/login.dart';
import 'package:project1/pages/products.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff26364f),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Image(image: AssetImage("lib/images/Sanaa Logo.JPG")),
              LoginButton(),
              SizedBox(
                height: 20,
              ),
              HomePageButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageButton extends StatelessWidget {
  const HomePageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductsPage()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff26364f),
          shadowColor: Colors.transparent,
        ),
        child: Text(
          "الذهاب الى الصفحة الرئيسية",
          style: GoogleFonts.harmattan(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: const Color(0xffb99365),
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff7d6b5a),
          shape: const StadiumBorder(),
        ),
        child: Text(
          "تسجيل الدخول",
          style: GoogleFonts.harmattan(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xff26364f),
          ),
        ),
      ),
    );
  }
}
