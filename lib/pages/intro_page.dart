import 'package:app/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/intro_page_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(25.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(padding: EdgeInsets.only(top: 540)),
                
              Text(
                "Synclin Sport",
                style: GoogleFonts.dmSerifDisplay(fontSize: 45, color: Colors.white),
              ),

              const SizedBox(height: 10),

              Text(
                "L'alleato di ogni professionista!",
                style:TextStyle(fontSize: 16, color: Colors.grey[200]),
              ),

              const SizedBox(height: 25),

              MyButton(
                text: "Get Started",
                onTap: () {
                  Navigator.pushNamed(context, '/loginpage');
                },
                ),
              


            ],

        )
      ),
    );
  }
}
