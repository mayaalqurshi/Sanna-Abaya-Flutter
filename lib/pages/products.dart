import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/profile.dart';

import 'cart.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SectionOne(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 150,
                              width: 90,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("lib/images/Cilya.png"),
                              )),
                            ),
                            Text(
                              "سيليا",
                              style: GoogleFonts.harmattan(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.end,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Color(0xff7e7e7e),
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "375",
                                  style: GoogleFonts.harmattan(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff0b101a),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 150,
                              width: 90,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("lib/images/Smoke.png"),
                              )),
                            ),
                            Text(
                              "سموكي",
                              style: GoogleFonts.harmattan(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.end,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Color(0xff7e7e7e),
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "350",
                                  style: GoogleFonts.harmattan(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff0b101a),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
      },
      icon: const Icon(
        Icons.person_outlined,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.search,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}

class CartButton extends StatelessWidget {
  const CartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CartPage()),
        );
      },
      icon: const Icon(
        Icons.shopping_cart_outlined,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
