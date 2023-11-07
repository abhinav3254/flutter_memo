import 'package:cash_memo/screens/MyNavigationBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Makeup',
          ),
          backgroundColor: const Color(0xff764abc),
        ),
        bottomNavigationBar: const BottomNavigationBarExampleApp(),
      ),
    );
  }
}
