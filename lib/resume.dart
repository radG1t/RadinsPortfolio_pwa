import 'package:flutter/material.dart';

class ResumerPage extends StatelessWidget {
  const ResumerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Resume',
            ),
            Image.asset(
                '/home/radin/MaShits/web-projects/my_portfolio/Images/phone.png'),
          ],
        ),
      ),
    );
  }
}
