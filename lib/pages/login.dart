import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/products.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff26364f),
        actions: [
          const Image(
            image: AssetImage("lib/images/Sanaa Logo.JPG"),
          ),
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
          mainAxisAlignment: MainAxisAlignment.center,
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
            Text(
              "تسجيل الدخول",
              style: GoogleFonts.harmattan(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: const Color(0xff0b101a),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 140,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text("اختر الوسيلة المناسبة",
                        style: GoogleFonts.harmattan(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 140,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 180,
                  height: 100,
                  child: EmailButton(),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 180,
                  height: 100,
                  child: MessageButton(),
                ),
              ],
            ),
            const SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}

class MessageButton extends StatelessWidget {
  const MessageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff26364f),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.smartphone_outlined,
              size: 30,
            ),
          ),
          Text(
            "رسالة نصية",
            style: GoogleFonts.harmattan(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: const Color(0xff0b101a),
            ),
          ),
        ],
      ),
    );
  }
}

class EmailButton extends StatelessWidget {
  const EmailButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff26364f),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EmailPage()),
              );
            },
            icon: const Icon(
              Icons.email_outlined,
              size: 30,
            ),
          ),
          Text(
            "البريد الالكتروني",
            style: GoogleFonts.harmattan(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: const Color(0xff0b101a),
            ),
          ),
        ],
      ),
    );
  }
}

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

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
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            Text(
              "تسجيل الدخول",
              style: GoogleFonts.harmattan(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: const Color(0xff0b101a),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("*",
                    style: GoogleFonts.harmattan(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    )),
                Text("البريد الالكتروني  ",
                    style: GoogleFonts.harmattan(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff0b101a),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 40,
                  decoration: const BoxDecoration(color: Color(0xffeeeeee)),
                  child: const Icon(
                    Icons.email_outlined,
                    color: Color(0xff8e8e8e),
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 360,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: 400,
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
                  " < الدخول",
                  style: GoogleFonts.harmattan(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 160,
            ),
          ],
        ),
      ),
    );
  }
}
