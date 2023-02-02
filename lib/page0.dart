import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/obj.dart';

class Page0 extends StatelessWidget {
  const Page0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Page0_AppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Radin Erfanfar,',
                    style: GoogleFonts.lato(
                      fontSize: 68,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Junior Flutter Developer.',
                    style: GoogleFonts.lato(
                      fontSize: 64,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      resumeBtn(context),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Column(
                children: [
                  Image.asset(
                    'char.png',
                    width: 525,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
