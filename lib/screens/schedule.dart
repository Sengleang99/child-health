import 'package:child_hearth/widgets/schedule/card_schedule_widget.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50, right: 25, left: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
                "Calendar", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.lightBlueAccent),
            ),
            SizedBox(height: 20,),
            // child 1
            CardScheduleWidget(),
            SizedBox(height: 15,),
            CardScheduleWidget(),
            // child 2
          ],
        ),
      ),
    );
  }
}


