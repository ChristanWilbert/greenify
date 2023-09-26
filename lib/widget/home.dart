import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Greenify",
              style: GoogleFonts.sansita(
                color: Color.fromARGB(255, 226, 248, 198),
                fontSize: 50,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Find your perfect solution",
                style: TextStyle(
                  fontSize: 17.71,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Helvetica",
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
