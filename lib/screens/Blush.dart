import 'package:flutter/material.dart';

void main() {
  runApp(const BlushApp());
}

class BlushApp extends StatelessWidget {
  const BlushApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Blush',
          ),
          backgroundColor: const Color(0xff764abc),
        ),
        body: Container(
          child: Text('Blus Page'),
        ),
      ),
    );
  }
}
