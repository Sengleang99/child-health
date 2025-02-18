import 'package:flutter/material.dart';

class button_logout_widget extends StatelessWidget {
  const button_logout_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Vaccination calendar button pressed');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
            vertical: 17,
            horizontal: 20
        ),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
        side: const BorderSide(
          color: Colors.white60,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.logout,
              color: Colors.redAccent,
              size: 30,
            ),
            SizedBox(width: 10),
            Text(
              'Log out',
              style: TextStyle(
                color: Colors.redAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}