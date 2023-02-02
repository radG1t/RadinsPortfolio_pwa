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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(48, 48, 48, 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Projects :',
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade600,
                  thickness: 0.3,
                  indent: 0, //px from left side
                  endIndent: MediaQuery.of(context).size.width -
                      192, //px from right side
                ),
              ],
            ),

            const SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: Colors.red,
                    width: 280,
                    height: 450,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  color: Colors.red,
                  width: 280,
                  height: 450,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  color: Colors.red,
                  width: 280,
                  height: 450,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),

            const Expanded(
              child: SizedBox(height: double.infinity),
            ),
            //footer :
            Divider(
              color: Colors.grey.shade600,
              thickness: 0.3,
              indent: 0,
              endIndent: 0,
            ),
            Info(context),
          ],
        ),
      ),
    );
  }
}
