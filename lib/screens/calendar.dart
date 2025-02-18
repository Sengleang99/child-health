import 'package:child_hearth/widgets/calendar/calendar_table_widget.dart';
import 'package:child_hearth/widgets/calendar/calendar_widget.dart';
import 'package:flutter/material.dart';


class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the vaccination schedules
    List<VaccinationSchedule> schedules = [
      VaccinationSchedule(
        age: "When the child is 6 weeks old",
        vaccinations: [
          'HepB-Hib',
          'PCV 1',
          'Oral Polio',
          'DTP',
          'PCV13',
          'Dep-Hep B-Hib 1',
        ],
      ),
      VaccinationSchedule(
        age: "When the child is 10 weeks old",
        vaccinations: [
          'HepB-Hib 2',
          'PCV 2',
          'Oral Polio 2',
          'DTP 2',
        ],
      ),
      VaccinationSchedule(
        age: "When the child is 6 weeks old",
        vaccinations: [
          'HepB-Hib',
          'PCV 1',
          'Oral Polio',
          'DTP',
          'PCV13',
          'Dep-Hep B-Hib 1',
        ],
      ),
      VaccinationSchedule(
        age: "When the child is 14 weeks old",
        vaccinations: [
          'HepB-Hib 3',
          'PCV 3',
          'Oral Polio 3',
          'DTP 3',
        ],
      ),
      VaccinationSchedule(
        age: "When the child is 14 weeks old",
        vaccinations: [
          'HepB-Hib 3',
          'PCV 3',
          'Oral Polio 3',
          'DTP 3',
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Vaccination Calendar",
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
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 34),
          child: Column(
            children: schedules
                .map((schedule) => VaccinationTable(
              title: schedule.age,
              vaccinations: schedule.vaccinations,
            ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
