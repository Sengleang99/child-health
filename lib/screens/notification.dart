import 'package:child_hearth/widgets/notification/notification_widget.dart';
import 'package:child_hearth/widgets/notification/title_widget.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TitleWidget(),
              SizedBox(height: 20),
              NotificationWidget(
                icon: Icons.notifications,
                title: "New Update Available",
                subtitle: "Version 2.1 is ready to download.",
                timestamp: "2 hours ago",
              ),
              SizedBox(height: 10),
              NotificationWidget(
                icon: Icons.event,
                title: "Event Reminder",
                subtitle: "Your vaccination appointment is tomorrow.",
                timestamp: "1 day ago",
              ),
              SizedBox(height: 10),
              NotificationWidget(
                icon: Icons.check_circle,
                title: "Task Completed",
                subtitle: "You have successfully added a new record.",
                timestamp: "3 days ago",
              ),
            ],
          ),
        ),
      ),
    );
  }
}




