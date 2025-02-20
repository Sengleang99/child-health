import 'package:child_hearth/screens/child_detail.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class infor_child_widget extends StatelessWidget {
  const infor_child_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(SwipeablePageRoute(
              builder: (BuildContext context) => Child_Detail(),
            ));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF007BFF),
              elevation: 2,
              padding: const EdgeInsets.symmetric(vertical: 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Vaccine Kids ", style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
                const Spacer(),
                Image.asset(
                  "assets/images/177188eb20b4855fc736174a61343f05-removebg-preview.png",
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                )
              ],
            ),
          )
      ),
    );
  }
}