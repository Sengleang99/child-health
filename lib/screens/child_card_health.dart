import 'package:child_hearth/screens/pills.dart';
import 'package:child_hearth/screens/supplements.dart';
import 'package:child_hearth/widgets/child_card_health/button.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class ChildCardHealth extends StatelessWidget {
  const ChildCardHealth ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text(
          "Child Card Health",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,  // Set text color to white for visibility on blue
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF007BFF),  // Set AppBar color to blue
        iconTheme: const IconThemeData(color: Colors.white),  // Set back icon color to white
        elevation: 0,  // Optional: Removes shadow under the AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);  // Pop the current screen
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Record of vaccinations for children",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ButtonChildCard(
              buttons: [
                ButtonData(
                  label: "Taking nutritional supplements",
                  icon: Icons.water_drop,
                  iconBackgroundColor: Colors.blueAccent,
                  onPressed: () {
                    Navigator.of(context).push(SwipeablePageRoute(
                      builder: (BuildContext context) => Supplements(),
                    ));
                  },
                ),
                ButtonData(
                  label: "Receiving contraceptive pills",
                  icon: Icons.medication_rounded,
                  iconBackgroundColor: Colors.greenAccent,
                  onPressed: () {
                    Navigator.of(context).push(SwipeablePageRoute(
                      builder: (BuildContext context) => PillsScreen(),
                    ));
                  },
                ),
                ButtonData(
                  label: "Receiving vaccinations",
                  icon: Icons.vaccines,
                  iconBackgroundColor: Colors.orangeAccent,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

