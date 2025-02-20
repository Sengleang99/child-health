import 'package:child_hearth/models/schedule.dart';
import 'package:child_hearth/widgets/schedule/card_schedule_widget.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a sample schedule list
    final List<ScheduleModel> schedules = [
      ScheduleModel(
        name: "Yan Sengleang",
        avatar: "assets/icons/avatar-man-icon-cartoon-male-pro.png",
        date: "Monday, Aug 2025",
        time: "8:00 - 5:00pm",
      ),
      ScheduleModel(
        name: "John Doe",
        avatar: "assets/icons/avatar-man-icon-cartoon-male-pro.png",
        date: "Tuesday, Sep 2025",
        time: "9:00 - 4:00pm",
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 55, right: 15, left: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Calendar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 20),
            // Loop through the schedules and create a CardScheduleWidget for each
            Column(
              children: schedules.map((schedule) {
                return CardScheduleWidget(
                  schedule: schedule,
                  onCancel: () {
                    print("Canceled: ${schedule.name}");
                  },
                  onReschedule: () {
                    print("Rescheduled: ${schedule.name}");
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
