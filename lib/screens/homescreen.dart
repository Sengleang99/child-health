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

    return const  SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            profile_widget(),
            SizedBox(height: 20),
            infor_child_widget(),
            SizedBox(height: 25),
            button_register_widget(),
            SizedBox(height: 20,),
            child_healthcard_widget(),
            SizedBox(height: 20,),
            button_calendar_widget(),
            SizedBox(height: 20,),
            button_type_vaccine(),
          ],
        ),
      ),
    );
  }
}






