import 'package:flutter/material.dart';

void main() => runApp(Center(
  child: Text(
    'Hello World',
    textDirection :TextDirection.ltr),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Widget App",
      theme: ThemeData(
        primarySwatch: Colors.white
      ),
      home: Center(
        child: Text(
          'Hello World'
        ),
      ),
    );
  }
}