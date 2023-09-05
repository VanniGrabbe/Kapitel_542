import 'package:flutter/material.dart';

class ExampleExceptionScreen extends StatelessWidget {
  const ExampleExceptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExampleExceptionScreen"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hier ist leider ein Fehler aufgetreten'),
        ],
      ),
    );
  }
}