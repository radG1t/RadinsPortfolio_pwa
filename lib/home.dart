import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Radins Portfolio'),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.62,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.moon,
                  color: Colors.white, size: 22),
            )
          ],
        ),
      ),
    );
  }
}
