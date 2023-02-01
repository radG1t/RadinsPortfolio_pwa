import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Radin Erfanfar,',
                        style: GoogleFonts.lato(
                          fontSize: 38,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Junior Flutter Developer.',
                        style: GoogleFonts.lato(
                          fontSize: 38,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'char.png',
                        width: 250,
                      ),
                    ],
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Projects :'),
                  Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                  ),
                ],
              ), // screen shots here :
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'email.png',
                        width: 28,
                      ),
                      GestureDetector(
                        onTap: () async {
                          await Clipboard.setData(const ClipboardData(
                              text: "RadinErfanfar@gmail.com"));
                          // copied successfully
                        },
                        child: const Text(' RadinErfanfar@gmail.com'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'phone.png',
                        width: 28,
                      ),
                      GestureDetector(
                        onTap: () async {
                          await Clipboard.setData(
                              const ClipboardData(text: "+989902532818"));
                          // copied successfully
                        },
                        child: const Text('+98 9902532818'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'linkedin.png',
                        width: 48,
                      ),
                      Image.asset(
                        'github.png',
                        width: 48,
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResumerPage(),
                        ),
                      ),
                      child: Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Open my resuome',
                            style: GoogleFonts.lato(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
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
