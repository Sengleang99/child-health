import 'package:flutter/material.dart';

class Supplements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Taking nutritional supplements",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,  // Set text color to white for visibility on blue
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF007BFF),  // Set AppBar color to blue
        iconTheme: const IconThemeData(color: Colors.white),  // Set back icon color to white
        elevation: 0,  // Optional: Removes shadow under the AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);  // Pop the current screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          color: Colors.white, // Background color for the table
          child: Table(
            border: TableBorder.all(color: Colors.grey), // Grey table border
            columnWidths: const {
              0: FixedColumnWidth(80), // Adjust width as needed
              1: FlexColumnWidth(),
            },
            children: [
              // Table header
              TableRow(
                decoration: const BoxDecoration(color: Colors.white), // Darker header background
                children: [
                  tableCell("Level", true),
                  tableCell("Receiving day", true),
                ],
              ),
              // Data rows with blue and red water drop icons
              tableRow(Colors.blue), // Blue drop
              tableRow(Colors.red),  // Red drop
              tableRow(Colors.red),
              tableRow(Colors.red),
              tableRow(Colors.red),
              tableRow(Colors.red),
              tableRow(Colors.red),
              tableRow(Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  TableRow tableRow(Color dropColor) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.water_drop, color: dropColor, size: 24),
        ),
        Padding (
          padding: const EdgeInsets.all(8.0),
          child: Text(""),
        ),
      ],
    );
  }

  Widget tableCell(String text, bool isHeader) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: 16,
        ),
      ),
    );
  }
}
