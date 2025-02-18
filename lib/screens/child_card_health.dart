import 'package:flutter/material.dart';

class ChildCardHealth extends StatelessWidget {
  const ChildCardHealth ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Child Card Health",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,  // Set text color to white for visibility on blue
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF007BFF),  // Set AppBar color to blue
        iconTheme: const IconThemeData(color: Colors.white),  // Set back icon color to white
        elevation: 0,  // Optional: Removes shadow under the AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);  // Pop the current screen
          },
        ),
      ),
      body: const Center(
        child: Text("Emty data !!!", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: Colors.black54
        ),),
      ),
    );
  }
}