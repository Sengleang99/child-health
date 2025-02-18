import 'package:flutter/material.dart';

class appbar_widget extends StatelessWidget {
  const appbar_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Registration",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 23,
          color: Colors.white,  // Set text color to black for visibility on white
        ),
      ),
      backgroundColor: const Color(0xFF007BFF),  // Set AppBar color to blue
      iconTheme: const IconThemeData(color: Colors.white),  // Set back icon color to white
      elevation: 0,  // Optional: Removes shadow under the AppBar
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);  // Pop the current screen
        },
      ),
    );
  }
}