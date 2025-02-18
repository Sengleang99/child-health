import 'package:child_hearth/screens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class ButtonGetStartWidget extends StatelessWidget {
  const ButtonGetStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Makes the button stretch across the screen width
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(SwipeablePageRoute(
            builder: (BuildContext context) => const SignInScreen(),
          ));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF007BFF),
          padding: const EdgeInsets.symmetric(
              vertical: 15
          ), // Removed horizontal padding to prevent overflow
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Border radius
          ),
        ),
        child: const Text(
          'Let\'s Get Started',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
