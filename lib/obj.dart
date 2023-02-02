import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/resume.dart';

Widget emailRow(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'email.png',
        width: 28,
      ),
      GestureDetector(
        onTap: () async {
          await Clipboard.setData(
              const ClipboardData(text: "RadinErfanfar@gmail.com"));

          // ignore: use_build_context_synchronously
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: const Center(child: Text("Email Adress copied.")),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        color: Colors.black,
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          "okay",
                          style: GoogleFonts.roboto(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        child: Text(
          ' RadinErfanfar@gmail.com',
          style: GoogleFonts.roboto(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}

Widget phoneNuberRow(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'phone.png',
        width: 38,
      ),
      GestureDetector(
          onTap: () async {
            await Clipboard.setData(const ClipboardData(text: "+989902532818"));

            // ignore: use_build_context_synchronously
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: const Center(child: Text("Phone number copied.")),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                          color: Colors.black,
                          padding: const EdgeInsets.all(14),
                          child: Text(
                            "okay",
                            style: GoogleFonts.roboto(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          child: Text(
            '+98 9902532818',
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.black,
            ),
          )),
    ],
  );
}

Widget resumeBtn(context) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(4),
    child: GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ResumerPage(),
        ),
      ),
      child: Container(
        width: 250,
        height: 50,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Open my resuome',
              style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget Page0_AppBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        'Resume',
        style: GoogleFonts.lato(color: Colors.black38, fontSize: 18),
      ),
      const SizedBox(
        width: 4,
      ),
      const Text(
        '|',
        style: TextStyle(color: Colors.black54, fontSize: 22),
      ),
      const SizedBox(
        width: 4,
      ),
      Text(
        'Projects',
        style: GoogleFonts.lato(color: Colors.black38, fontSize: 18),
      ),
      const SizedBox(
        width: 4,
      ),
      const Text(
        '|',
        style: TextStyle(color: Colors.black54, fontSize: 22),
      ),
      const SizedBox(
        width: 4,
      ),
      Text(
        'info',
        style: GoogleFonts.lato(color: Colors.black38, fontSize: 18),
      ),
    ],
  );
}
