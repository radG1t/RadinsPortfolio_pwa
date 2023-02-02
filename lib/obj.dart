import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:my_portfolio/home.dart';
import 'package:my_portfolio/page0.dart';
import 'package:my_portfolio/page1.dart';
import 'package:my_portfolio/resume.dart';

Widget Info(context) {
  return Column(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          emailRow(context),
          const SizedBox(
            height: 8,
          ),
          // phoneNuberRow(context),
          // const SizedBox(
          //   height: 8,
          // ),
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
  );
}

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
          builder: (context) => const ResumePage(),
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

Widget Page0_AppBar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ResumePage(),
          ),
        ),
        child: Text(
          'Resume',
          style: GoogleFonts.lato(color: Colors.black38, fontSize: 18),
        ),
      ),
      const SizedBox(
        width: 4,
      ),
      const Text(
        '|',
        style: TextStyle(
            color: Colors.black54, fontSize: 22, fontWeight: FontWeight.w400),
      ),
      const SizedBox(
        width: 4,
      ),
      GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Page1(),
          ),
        ),
        child: Text(
          'Projects',
          style: GoogleFonts.lato(color: Colors.black38, fontSize: 18),
        ),
      ),
      const SizedBox(
        width: 4,
      ),
      const Text(
        '|',
        style: TextStyle(
            color: Colors.black54, fontSize: 22, fontWeight: FontWeight.w400),
      ),
      const SizedBox(
        width: 4,
      ),
      GestureDetector(
        //  onTap: () => Scroll,   //Scroll down
        child: Text(
          'info',
          style: GoogleFonts.lato(color: Colors.black38, fontSize: 18),
        ),
      ),
    ],
  );
}
