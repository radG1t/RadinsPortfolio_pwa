import 'package:flutter/material.dart';
import 'package:my_portfolio/home.dart';

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
      home: const MainPage(),
    );
  }
}
