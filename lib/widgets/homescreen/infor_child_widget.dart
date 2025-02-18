import 'package:child_hearth/screens/child_detail.dart';
import 'package:child_hearth/screens/children_card.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class infor_child_widget   extends StatelessWidget {
  const infor_child_widget  ({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(SwipeablePageRoute(
          builder: (BuildContext context) => Child_Detail(),
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Smooth rounded corners
        ),
        elevation: 8, // More prominent shadow for depth
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF007BFF), Color(0xFF4CAF50)], // Gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
            width: screenWidth * 0.9, // Card takes 90% of screen width
            height: screenHeight * 0.2, // Card height is 20% of screen height
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      child: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.white70,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Adds spacing between icon and text
                  const Text(
                    "Children Information",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5), // Small spacing between title and subtitle
                  const Text(
                    'View schedule and child information',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white70, // Softer text color for contrast
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
