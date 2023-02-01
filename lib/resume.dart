import 'package:flutter/material.dart';

class ResumerPage extends StatelessWidget {
  const ResumerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              'Resume',
            ),
            Image.asset(
              'male_char.png',
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
