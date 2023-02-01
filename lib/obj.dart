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
              title: const Text("Email Adress copied."),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Container(
                    color: Colors.black,
                    padding: const EdgeInsets.all(14),
                    child: Text(
                      "okay",
                      style: GoogleFonts.roboto(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        child: const Text(' RadinErfanfar@gmail.com'),
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
        width: 28,
      ),
      GestureDetector(
        onTap: () async {
          await Clipboard.setData(const ClipboardData(text: "+989902532818"));

          // ignore: use_build_context_synchronously
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: const Text("Phone number copied."),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Container(
                    color: Colors.black,
                    padding: const EdgeInsets.all(14),
                    child: Text(
                      "okay",
                      style: GoogleFonts.roboto(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        child: const Text('+98 9902532818'),
      ),
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
              style: GoogleFonts.lato(
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
