import 'package:flutter/material.dart';

class CardScheduleWidget extends StatelessWidget {
  const CardScheduleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/icons/avatar-man-icon-cartoon-male-pro.png",
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,

                  ),
                ),
                const SizedBox(height: 20,),
                const Text("Yan Sengleang", style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.calendar_month,size: 20,color: Colors.grey,),
                  SizedBox(width: 5,),
                  Text("Monday,Aug,2025",style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400
                  ),),
                  Spacer(),
                  Icon(Icons.watch_later_outlined,size: 20,color: Colors.grey,),
                  SizedBox(width: 5,),
                  Text("8:00 - 5:00pm",style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 45
                    ),
                  ),
                  child: const Text(
                    "Cancel", style: TextStyle(fontSize: 16, color: Colors.white),),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 40
                    ),
                    side: const BorderSide(
                      color: Colors.grey, // Blue border
                      width: 1, // Border width
                    ),
                  ),
                  child: const Text(
                    "Reschedule", style: TextStyle(fontSize: 16,color: Colors.black87),),
                ),
              ],

            )
          ],
        ),
      ),
    );
  }
}