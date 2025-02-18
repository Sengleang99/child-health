import 'package:child_hearth/screens/schedule.dart';
import 'package:flutter/material.dart';
import 'package:child_hearth/screens/homescreen.dart';
import 'package:child_hearth/screens/notification.dart';
import 'package:child_hearth/screens/profile.dart';

class NavigateScreen extends StatefulWidget {
  const NavigateScreen({super.key});

  @override
  _NavigateState createState() => _NavigateState();
}

class _NavigateState extends State<NavigateScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();


  final List<Widget> _pages = [
    const HomeScreen(),
    const ScheduleScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, size: 30),
            label: 'Scheduld',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none, size: 30),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 30),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 15),
        unselectedLabelStyle: const TextStyle(fontSize: 15),
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF007BFF),
        unselectedItemColor: Colors.black87,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
