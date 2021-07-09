import 'package:flutter/material.dart';
import 'package:memories_album/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memories_Album',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Benne",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
