import 'package:flutter/material.dart';

class profile_widget extends StatelessWidget {
  const profile_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 35),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/icons/avatar-man-icon-cartoon-male-pro.png",
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15,),
          const Text('Yan Sengleang',style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: Colors.black87
          ),),
        ],
      ),
    );
  }
}