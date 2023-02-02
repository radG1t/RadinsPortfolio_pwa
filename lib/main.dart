import 'package:flutter/material.dart';
import 'package:my_portfolio/home.dart';

import 'package:my_portfolio/page0.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radin Portfo', // *************************** radin`s
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MainWrapper(),
    );
  }
}

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  final PageController _mypages = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        children: const [
          Page0(),
          Page1(),
        ],
      ),
    );
  }
}
