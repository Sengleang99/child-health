import 'package:flutter/material.dart';

class ButtonChildCard extends StatelessWidget {
  final List<ButtonData> buttons;

  const ButtonChildCard({
    Key? key,
    required this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buttons.map((button) => _buildButton(button)).toList(),
    );
  }

  Widget _buildButton(ButtonData button) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7.5),
      child: ElevatedButton(
        onPressed: button.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 2,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: button.iconBackgroundColor.withOpacity(0.2),
                child: Icon(
                  button.icon,
                  color: button.iconBackgroundColor,
                ),
              ),
              const SizedBox(width: 15),
              Text(
                button.label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonData {
  final String label;
  final IconData icon;
  final Color iconBackgroundColor;
  final VoidCallback onPressed;

  ButtonData({
    required this.label,
    required this.icon,
    required this.iconBackgroundColor,
    required this.onPressed,
  });
}

