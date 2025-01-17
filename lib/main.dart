import 'package:flutter/material.dart';
//import 'package:hello_world1/detailed_screen.dart';
import 'package:hello_world1/main_screen.dart';
//import 'package:hello_world1/model/tourism_place.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wisata Bandung",
      theme: ThemeData(),
      //home : const DetailScreen(),
      home: MainScreen(),
    );
  }
}
