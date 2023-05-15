import 'package:flutter/material.dart';
import 'package:quiz_app/info.dart';
import 'package:quiz_app/recommend.dart';
import 'package:quiz_app/welcome.dart';
import 'package:quiz_app/info.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const infoPage(),
    );
  }
}


 