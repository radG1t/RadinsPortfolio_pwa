import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/obj.dart';
import 'package:my_portfolio/resume.dart';
import 'package:flutter/services.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Projects :',
                        style: GoogleFonts.lato(
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 2.2,
                    indent: 0, //px from left side
                    endIndent: MediaQuery.of(context).size.width -
                        145, //px from right side
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 420,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 420,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 420,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              const Divider(
                indent: 150,
                endIndent: 150,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  emailRow(context),
                  const SizedBox(
                    height: 8,
                  ),
                  phoneNuberRow(context),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'linkedin.png',
                    width: 58,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Image.asset(
                    'github.png',
                    width: 58,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
