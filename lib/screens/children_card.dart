import 'package:child_hearth/screens/child_detail.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class ChildrenScreen extends StatelessWidget {
  const ChildrenScreen({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF007BFF),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        title: const Text(
          "Children",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            _ChildButton(
              screenHeight: screenHeight,
              name: "Yan Sengleang",
              date: "Wednesday, September 20, 2019",
              onPressed: () {
                Navigator.of(context).push(
                  SwipeablePageRoute(
                    builder: (BuildContext context) => Child_Detail(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            _ChildButton(
              screenHeight: screenHeight,
              name: "John Doe",
              date: "Thursday, October 10, 2018",
              onPressed: () {
                Navigator.of(context).push(
                  SwipeablePageRoute(
                    builder: (BuildContext context) => Child_Detail(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ChildButton extends StatelessWidget {
  const _ChildButton({
    required this.screenHeight,
    required this.name,
    required this.date,
    required this.onPressed,
  });

  final double screenHeight;
  final String name;
  final String date;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        height: screenHeight * 0.2,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF007BFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.all(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/icons/avatar-man-icon-cartoon-male-pro.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                      size: 25,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
