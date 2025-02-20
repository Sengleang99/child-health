import 'package:child_hearth/screens/type_of_vaccine.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class button_type_vaccine extends StatelessWidget {
  const button_type_vaccine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(SwipeablePageRoute(
          builder: (BuildContext context) => TypeOfVaccine(),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueAccent.withOpacity(0.3),
              child: const Icon(
                Icons.vaccines,
                color: Colors.blueAccent,
              ),
            ), // Person add icon
            const SizedBox(width: 10),
            const Text(
              'Type of Vaccine',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16, fontWeight: FontWeight.w400
              ),
            ),
            const Spacer(), // Pushes the arrow to the end
            const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black45
            ), // Arrow icon at the end
          ],
        ),
      ),
    );
  }
}