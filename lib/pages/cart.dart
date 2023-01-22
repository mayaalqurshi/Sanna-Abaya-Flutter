import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/products.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
                const SizedBox(
                  child: SectionOne(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: const [
                    SectionTwo(),
                    SizedBox(
                      height: 60,
                    ),
                    SectionThree(),
                    SizedBox(
                      width: 400,
                      height: 30,
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    SectionFour(),
                    SizedBox(
                      height: 40,
                    ),
                    SectionFive(),
                  ],
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

class SectionFive extends StatelessWidget {
  const SectionFive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "روابط مهمة",
            style: GoogleFonts.harmattan(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xff26364f),
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "سياسة الاستبدال والاسترجاع",
            style: GoogleFonts.harmattan(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: const Color(0xff7e7e7e),
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "تواصل معنا",
            style: GoogleFonts.harmattan(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xff26364f),
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff7e7e7e),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: const Icon(
                    Icons.tiktok,
                    color: Color(0xff7e7e7e),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff7e7e7e)),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: const Icon(
                    Icons.tiktok,
                    color: Color(0xff7e7e7e),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff7e7e7e),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: const Icon(
                    Icons.tiktok,
                    color: Color(0xff7e7e7e),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SectionFour extends StatelessWidget {
  const SectionFour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "من نحن",
            style: GoogleFonts.harmattan(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xff26364f),
            ),
          ),
          Text(
            "مؤسسة مهتمة في مجال الازياء ونهدف بأن نكون وجهة رائدة وملهة لكل محبي الازياء والموضة والسعي بتقديم تصاميم مميزة وأنيقة بجودة عالية وبأفضل الاسعار للجميع ",
            style: GoogleFonts.harmattan(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
            textAlign: TextAlign.right,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "الايميل",
                style: GoogleFonts.harmattan(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xff7e7e7e),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.mail_outline,
                size: 20,
                color: Color(0xff7e7e7e),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "واتساب",
                style: GoogleFonts.harmattan(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xff7e7e7e),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.whatsapp_rounded,
                size: 20,
                color: Color(0xff7e7e7e),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.heart_broken,
          size: 80,
          color: Color(0xffe1e1e1),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "السلة فارغة",
          style: GoogleFonts.harmattan(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          height: 50,
          width: 380,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductsPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff26364f),
              shape: const StadiumBorder(),
            ),
            child: const ProductsPageButton(),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        const SizedBox(
          width: 200,
          height: 100,
          child: Image(
            image: AssetImage(
              "lib/images/Payment.png",
            ),
          ),
        ),
      ],
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                width: 40,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff26364f),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "2",
                      style: GoogleFonts.harmattan(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff26364f),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "طريقة الدفع",
                style: GoogleFonts.harmattan(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff26364f),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 220,
            height: 30,
            child: Divider(
              color: Color(0xff26364f),
              thickness: 1,
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: 40,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff26364f),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                      child: Icon(
                    Icons.check_sharp,
                    size: 30,
                    color: Colors.white,
                  )),
                ),
              ),
              Text(
                "سلة المشتريات",
                style: GoogleFonts.harmattan(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff26364f),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "سلة المشتريات",
          style: GoogleFonts.harmattan(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 16,
            color: Colors.grey,
          ),
        ),
        Text(
          "الرئيسية",
          style: GoogleFonts.harmattan(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home,
            size: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class ProductsPageButton extends StatelessWidget {
  const ProductsPageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Text(
              "العودة للمتجر",
              style: GoogleFonts.harmattan(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
        ),
      ],
    );
  }
}
