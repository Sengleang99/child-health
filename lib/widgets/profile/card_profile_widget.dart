import 'package:flutter/material.dart';

class card_profile_widget extends StatelessWidget {
  const card_profile_widget({
    super.key,
  });

  Widget _buildProfileOption ({
    required IconData icon,
    required String title,
    required VoidCallback onPressed,
    Color iconColor = Colors.black45,
    Color textColor = Colors.black54,
}) {
  return Column(
    children: [
      TextButton(
          onPressed:(){},
          child: Row(
            children: [
              Icon(icon, color: iconColor),
              const SizedBox(width: 15,),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                ),
              ),
              const Divider(height: 20, thickness: 1, color: Colors.grey),
            ],
          )
      ),
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            _buildProfileOption(
                icon: Icons.settings,
                title: "Setting",
                onPressed: (){}
            ),
            _buildProfileOption(
                icon: Icons.child_care,
                title: "Children",
                onPressed: (){}
            ),
            _buildProfileOption(
                icon: Icons.logout,
                title: "Log out",
                iconColor: Colors.redAccent,
                textColor: Colors.redAccent,
                onPressed: (){}
            )
          ],
        ),
      ),
    );
  }
}


