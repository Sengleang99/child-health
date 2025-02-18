import 'package:flutter/material.dart';

class TypeOfVaccine extends StatelessWidget {
  TypeOfVaccine({super.key});

  final List<Map<String, String>> vaccineData = [
    {"title": "Hepatitis B vaccine (HepBbirth)"},
    {"title": "Tuberculosis vaccine (BCG)"},
    {"title": "Polio vaccine (OPV)"},
    {"title": "Tetanus vaccine"},
    {"title": "Measles-Rubella (MR) vaccine"},
    {"title": "Pneumonia vaccine - inflammation"},
    {"title": "Hepatitis B vaccine (HepBbirth)"},
    {"title": "Tuberculosis vaccine (BCG)"},
    {"title": "Polio vaccine (OPV)"},
    {"title": "Tetanus vaccine"},
    {"title": "Measles-Rubella (MR) vaccine"},
    {"title": "Pneumonia vaccine - inflammation"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: vaccineData.map((vaccine) {
              return Column(
                children: [
                  _buildVaccineButton(vaccine["title"]!, context),
                  const SizedBox(height: 20),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "Type Of Vaccine",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color(0xFF007BFF),
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  ElevatedButton _buildVaccineButton(String title, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press (navigate to details page, etc.)
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 20),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black45,
            ),
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 17),
        side: const BorderSide(
          color: Colors.white60,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
