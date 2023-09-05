import 'package:flutter/material.dart';

class ArgumentErrorScreen extends StatelessWidget {
  const ArgumentErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ArgumentErrorScreen"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hier ist leider ein Argumentenfehler aufgetreten'),
        ],
      ),
    );
  }
}