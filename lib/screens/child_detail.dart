import 'package:flutter/material.dart';
import 'package:child_hearth/models/kid.dart';

class Child_Detail  extends StatelessWidget {
  Child_Detail ({super.key});

  final List<KidModel> kids = [
    KidModel(
      name: "John Doe",
      gender: "Male",
      dateOfBirth: "2020-01-15",
      fatherName: "Michael Doe",
      motherName: "Sarah Doe",
      address: "123 Main Street",
      hospital: "City Hospital",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Children Details",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF007BFF),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: kids.length,
        itemBuilder: (context, index) {
          final kid = kids[index];
          return Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xFF007BFF),
                          radius: 24,
                          child: Icon(Icons.child_care, color: Colors.white),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          kid.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Text(
                      "Gender: ${kid.gender}",
                      style: const TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Date of Birth: ${kid.dateOfBirth}",
                      style: const TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Father: ${kid.fatherName}",
                      style: const TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Mother: ${kid.motherName}",
                      style: const TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Address: ${kid.address}",
                      style: const TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Hospital: ${kid.hospital}",
                      style: const TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
