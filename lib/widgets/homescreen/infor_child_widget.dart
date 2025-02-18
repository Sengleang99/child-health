import 'package:child_hearth/screens/child_detail.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class infor_child_widget extends StatelessWidget {
  const infor_child_widget ({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(SwipeablePageRoute(
          builder: (BuildContext context) =>  Child_Detail(),
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 8,
        child: Container(
          width: screenWidth * 0.9,
          constraints: BoxConstraints(
            maxHeight: screenHeight * 0.25, // Adjusts height dynamically
          ),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF007BFF), Color(0xFF4CAF50)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Prevent overflow
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.remove_red_eye,
                    color: Colors.white70,
                    size: 30,
                  ),
                ),
                const SizedBox(height: 10),
                const Flexible(
                  child: Text(
                    "Children Information",
                    style: TextStyle(
                      fontSize: 24, // Adjust based on screen width
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 5),
                Flexible(
                  child: Text(
                    'View schedule and child information',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04, // Responsive font size
                      fontWeight: FontWeight.w300,
                      color: Colors.white70,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}