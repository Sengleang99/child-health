import 'package:child_hearth/screens/form_register_child.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class button_register_widget extends StatelessWidget {
  const button_register_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
          Navigator.of(context).push(SwipeablePageRoute(
            builder: (BuildContext context) => const FormInputScreen(),
          ));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // White background
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
        side: const BorderSide(
          color: Colors.white60, // Blue border
          width: 1, // Border width
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Border radius
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8, // 80% of the screen width
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_add, color: Colors.orangeAccent,size: 30,), // Person add icon
            SizedBox(width: 10),
            Text(
              'Go to Register Child',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16, fontWeight: FontWeight.w400
              ),
            ),
            Spacer(), // Pushes the arrow to the end
            Icon(
                Icons.arrow_forward_ios,
                color: Colors.black45
            ), // Arrow icon at the end
          ],
        ),
      ),
    );
  }
}