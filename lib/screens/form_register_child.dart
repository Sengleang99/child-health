import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For Date Format

class FormInputScreen extends StatefulWidget {
  const FormInputScreen({super.key});

  @override
  State<FormInputScreen> createState() => _FormInputState();
}

class _FormInputState extends State<FormInputScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fatherNameController = TextEditingController();
  final TextEditingController _motherNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _hospitalController = TextEditingController();

  String _gender = 'Select Gender'; // Default gender
  DateTime _selectedDate = DateTime.now(); // Initial Date

  // Function to show Date Picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dobController.text = DateFormat('yyyy-MM-dd').format(_selectedDate);
      });
    }
  }

  // Widget to create a text input field
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String validationMessage
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black87),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validationMessage;
          }
          return null;
        },
      ),
    );
  }

  // Widget to create the gender dropdown
  Widget _buildGenderDropdown() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: DropdownButtonFormField<String>(
        value: _gender,
        decoration: InputDecoration(
          labelText: 'Select Gender',
          labelStyle: const TextStyle(color: Colors.black87),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (String? newValue) {
          setState(() {
            _gender = newValue!;
          });
        },
        items: ['Select Gender','Male', 'Female']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select gender';
          }
          return null;
        },
      ),
    );
  }

  // Widget for the date of birth field
  Widget _buildDateOfBirthField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: _dobController,
        decoration: InputDecoration(
          labelText: "Date of Birth",
          labelStyle: const TextStyle(color: Colors.black87),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () => _selectDate(context),
          ),
        ),
        readOnly: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select date of birth';
          }
          return null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Form Register",
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();  // Dismiss keyboard on tap outside
        },
        child: SafeArea(
          child: SingleChildScrollView( // Wrap the form in SingleChildScrollView
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Father Name and Gender Fields
                    _buildTextField(
                        controller: _fatherNameController,
                        label: "Enter Name",
                        validationMessage: 'Please enter father\'s name'),

                    // Drop down gender
                    _buildGenderDropdown(),

                    // Date of Birth
                    _buildDateOfBirthField(),

                    // Father's Name
                    _buildTextField(
                        controller: _fatherNameController,
                        label: "Enter Father Name",
                        validationMessage: "Please enter father\'s name"),

                    // Mother's Name
                    _buildTextField(
                        controller: _motherNameController,
                        label: "Enter Mother's Name",
                        validationMessage: 'Please enter mother\'s name'),

                    // Address
                    _buildTextField(
                        controller: _addressController,
                        label: "Enter Address",
                        validationMessage: 'Please enter address'),

                    // Hospital
                    _buildTextField(
                        controller: _hospitalController,
                        label: "Enter Hospital",
                        validationMessage: 'Please enter hospital'),

                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Proceed with form submission
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF007BFF),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 144, vertical: 15),
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // Border radius
                        ),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
