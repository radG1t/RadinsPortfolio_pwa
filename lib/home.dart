import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/resume.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        // Appbar may be deleted.
        toolbarHeight: 48,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Radins Portfolio'),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.moon,
                  color: Colors.white, size: 22),
            ),
          ],
        ),
      ),  */
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Radin Erfanfar',
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
                Row(
                  children: [
                    Image.asset(
                      'email.png',
                      width: 28,
                    ),
                    Text(' RadinErfanfar@gmail.com'),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'phone.png',
                      width: 28,
                    ),
                    const Text('+98 9902532818'),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'github.png',
                      width: 48,
                    ),
                    Image.asset(
                      'linkedin.png',
                      width: 48,
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResumerPage()),
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
          ),
        ),
      ),
    );
  }
}
