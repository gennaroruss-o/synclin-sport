import 'package:app/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 570, left: 25, right: 25),
        decoration: const BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("lib/images/intro_page_bg.png"),
            fit: BoxFit.cover,
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Synclin Sport",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44, 
                color: Colors.white,
                letterSpacing: 1,
                ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "L'alleato ideale di ogni sportivo",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 18, 
                    color: Colors.white.withOpacity(0.8),
                    //letterSpacing: 1,
                ),
                ),
                const SizedBox(height: 30),

                MyButton(text: "Get Started"),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}