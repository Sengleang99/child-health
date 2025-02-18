import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:child_hearth/screens/slash_screen.dart'; // Import the Slash widget

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, // Define your theme here
      ),
      home: const Slash(), // Use the Slash widget as the home screen
    );
  }
}
