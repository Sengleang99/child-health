import 'package:child_hearth/widgets/slash/button_getstart_widget.dart';
import 'package:flutter/material.dart';

class Slash extends StatefulWidget {
  const Slash({Key? key}) : super(key: key);

  @override
  _SlashState createState() => _SlashState();
}

class _SlashState extends State<Slash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/photo_2024-08-02_10-50-27-removebg.png'),
              width: 360,
            ),
            SizedBox(height: 20),
            Text(
              'Go & Get Vaccinated!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            Text(
              'Easy way to find available vaccines',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Text(
              'Program hears you!',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(height: 90),

            // Button with left and right padding
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25), // Left & Right padding 15
              child: ButtonGetStartWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
