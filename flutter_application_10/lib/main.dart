import 'package:flutter/material.dart';
import 'package:flutter_application_10/Pages/BlogClass.dart';
import 'package:flutter_application_10/Pages/Home.dart';

void main() {
  runApp(const MyApp());
}

Blog BlogN = Blog('', '', '');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ME Blog',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(
        BlogN: BlogN,
      ),
    );
  }
}
