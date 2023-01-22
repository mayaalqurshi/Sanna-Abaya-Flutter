import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/products.dart';

import 'login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff26364f),
        actions: [
          const Image(image: AssetImage("lib/images/Sanaa Logo.JPG")),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff0b101a),
                  ),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_outlined,
                    size: 60,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
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
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 140,
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Text(
                "Profile",
                style: GoogleFonts.harmattan(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff0b101a),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Email",
              style: GoogleFonts.harmattan(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: const Color(0xff0b101a),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Orders",
              style: GoogleFonts.harmattan(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: const Color(0xff0b101a),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Wishlisht",
              style: GoogleFonts.harmattan(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: const Color(0xff0b101a),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xff26364f),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CartButton(),
            SizedBox(
              width: 80,
            ),
            SearchButton(),
            SizedBox(
              width: 80,
            ),
            ProfileButton(),
          ],
        ),
      ),
    );
  }
}
