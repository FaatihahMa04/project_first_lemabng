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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home : const DetailScreen(),
      //home: MainScreen(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "logo",
              child: Image.asset(
                'images/dicoding.png',
                width: 150,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                child: Text('Next Screen'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return MainScreen();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
