import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'obj.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            // Divider(
            //   color: Colors.black,
            //   thickness: 2.2,
            //   indent: 0, //px from left side
            //   endIndent:
            //       MediaQuery.of(context).size.width - 145, //px from right side
            // ),
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
    );
  }
}
