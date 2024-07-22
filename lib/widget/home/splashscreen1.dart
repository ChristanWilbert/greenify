import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:greenify/widget/adddevice/addDevicePopup.dart';
import 'package:greenify/widget/app.dart';

class SplashContainer extends StatefulWidget {
  const SplashContainer({super.key});

  @override
  State<SplashContainer> createState() => _SplashContainerState();
}

class _SplashContainerState extends State<SplashContainer> {
  int pageno = 0;
  handleclick(int n) {
    setState(() {
      pageno = n;
    });
  }

  late List<Widget> page = [
    Screen1(next: handleclick),
    Screen2(
      next: handleclick,
    ),
    App(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: TextButton(
        onPressed: () {},
        child: page[pageno],
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key, required this.next});
  final Function next;

  @override
  Widget build(BuildContext context) {
    movetonextpage() => next(1);
    return Container(
      constraints: const BoxConstraints.expand(),
      margin: const EdgeInsets.only(top: 50, right: 0),
      padding: const EdgeInsets.only(right: 0),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/splash2.png"),
            fit: BoxFit.contain,
            alignment: Alignment.bottomRight),
      ),
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text(
                "GREENIFY",
                style: GoogleFonts.kalam(
                  fontSize: 55,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff25255D),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120.0, right: 30),
              child: Text(
                "Find your perfect solar solutions for your sweet home!",
                style: GoogleFonts.jura(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffBCBCFF),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 630, left: 50),
          child: ElevatedButton(
            onPressed: movetonextpage,
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.black,
                elevation: 40,
                maximumSize: Size(190, 300),
                minimumSize: Size(100, 60),
                backgroundColor: Colors.black),
            child: Row(
              children: [
                Text(
                  "Get Started",
                  style: GoogleFonts.jura(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Image.asset("assets/images/next.png"),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.next});
  final Function next;

  @override
  Widget build(BuildContext context) {
    movetonextpage() => next(2);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/splash3.png"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      "Add Device",
                      style: GoogleFonts.kalam(
                          fontSize: 55,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF25255D)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 30, left: 50, right: 50),
                      child: Text(
                        "First of all add your devices at home with the suitable power rating.",
                        style: GoogleFonts.jura(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFCBCBFF),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Image.asset("assets/images/splashimage1.png")],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: movetonextpage,
              child: Text(
                "Next",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Image.asset("assets/images/next.png"),
          ],
        )
      ],
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("data");
  }
}
