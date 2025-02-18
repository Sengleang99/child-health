import 'package:child_hearth/widgets/homescreen/button_calendar_widget.dart';
import 'package:child_hearth/widgets/homescreen/button_register_widget.dart';
import 'package:child_hearth/widgets/homescreen/button_type_vaccine_widget.dart';
import 'package:child_hearth/widgets/homescreen/button_child_healthcard_widget.dart';
import 'package:child_hearth/widgets/homescreen/infor_child_widget.dart';
import 'package:child_hearth/widgets/homescreen/profile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const profile_widget(),
            const SizedBox(height: 20),
            infor_child_widget(
                screenWidth: screenWidth,
                screenHeight: screenHeight
            ),
            const SizedBox(height: 25),
            const button_register_widget(),
            const SizedBox(height: 20,),
            const button_type_vaccine(),
            const SizedBox(height: 20,),
            const button_calendar_widget(),
            const SizedBox(height: 20,),
            const child_healthcard_widget(),
          ],
        ),
      ),
    );
  }
}




