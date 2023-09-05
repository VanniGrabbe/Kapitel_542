
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kapitel_542/argument_error_screen.dart';
import 'package:kapitel_542/example_exception_screen.dart';
import 'package:kapitel_542/format_error_screen.dart';

void main() {
  runApp(const ExceptionApp());
}
class ExampleException implements Exception {
  String message;

  ExampleException(this.message);
}

class ExceptionApp extends StatelessWidget {
  const ExceptionApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => ExceptionAppScreen(),
        '/exampleExceptionScreen':(context) => const ExampleExceptionScreen(),
        '/argumentErrorScreen':(context) => const ArgumentErrorScreen(),
        '/formatErrorScreen':(context) => const FormatErrorScreen(),
      },
    );
  }
}

class ExceptionAppScreen extends StatelessWidget {
  const ExceptionAppScreen({super.key});

  performOperation(context) {
    try {
      final random = Random();
      final randomNumber = random.nextInt(3);

      if (randomNumber == 0){
        throw ExampleException("Benutzerdefinierter Fehler ist aufgetreten");
      } else if (randomNumber == 1){
        throw ArgumentError("Ein Argumentfehler ist aufgetreten");
      }else{
        throw const FormatException("Ein Formatfehler ist aufgetreten");
      }
    } on ExampleException catch (ee){
      Navigator.pushNamed(context, '/exampleExceptionScreen');
      print("Benutzerdefinierter Fehler: ${ee.message}");
    } on ArgumentError catch (e){
      Navigator.pushNamed(context, '/argumentErrorScreen');
      print("Fehler: $e");
    } catch (e){
      Navigator.pushNamed(context, '/formatErrorScreen');
    }
    finally{
      cleanup();
    }
  }
  void cleanup(){
    print("Aufräumaktionen wurden durchgeführt");
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(onPressed: () => performOperation(context), 
          child: const Text("Exception auslösen"),
          )
        ],
      ),
    ),

    );
      
    
  }
}


