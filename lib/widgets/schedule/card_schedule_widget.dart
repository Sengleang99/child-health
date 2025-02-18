import 'package:child_hearth/models/schedule.dart';
import 'package:flutter/material.dart';

class CardScheduleWidget extends StatelessWidget {
  final ScheduleModel schedule;
  final VoidCallback onCancel;
  final VoidCallback onReschedule;

  const CardScheduleWidget({
    super.key,
    required this.schedule,
    required this.onCancel,
    required this.onReschedule,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    schedule.avatar,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  schedule.name,
                  style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.calendar_month, size: 20, color: Colors.grey),
                const SizedBox(width: 5),
                Text(
                  schedule.date,
                  style: const TextStyle(fontSize: 13, color: Colors.black54, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                const Icon(Icons.watch_later_outlined, size: 20, color: Colors.grey),
                const SizedBox(width: 5),
                Text(
                  schedule.time,
                  style: const TextStyle(fontSize: 13, color: Colors.black54, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                ElevatedButton(
                  onPressed: onCancel,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                  ),
                  child: const Text("Cancel", style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: onReschedule,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    side: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  child: const Text("Reschedule", style: TextStyle(fontSize: 16, color: Colors.black87)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

