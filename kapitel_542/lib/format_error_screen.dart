import 'package:flutter/material.dart';

class FormatErrorScreen extends StatelessWidget {
  const FormatErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormatErrorScreen"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hier ist leider ein Formatfehler aufgetreten'),
        ],
      ),
    );
  }
}