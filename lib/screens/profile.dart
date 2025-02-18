import 'package:child_hearth/widgets/profile/button_kid_widget.dart';
import 'package:child_hearth/widgets/profile/button_logout_widget.dart';
import 'package:child_hearth/widgets/profile/profile_name_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key}); // Constructor

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView( // Added to handle scrolling
        child: Column(
          children: [
            profile_name_widget(),
            SizedBox(height: 30),
            button_kid_widget(),
            SizedBox(height: 20,),
            button_logout_widget(),
          ],
        ),
      ),
    );
  }
}




