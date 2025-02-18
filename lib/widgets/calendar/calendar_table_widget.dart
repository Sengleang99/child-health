// vaccination_table.dart
import 'package:flutter/material.dart';

class VaccinationTable extends StatelessWidget {
  final String title;
  final List<String> vaccinations;

  const VaccinationTable({super.key, required this.title, required this.vaccinations});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue), // Border color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade100, // Light blue background
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // Content (bullet points)
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: vaccinations
                  .map((vaccination) => Row(
                children: [
                  const Icon(Icons.circle, size: 8, color: Colors.black),
                  const SizedBox(width: 8),
                  Text(vaccination),
                ],
              ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
