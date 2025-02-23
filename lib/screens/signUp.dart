import 'package:child_hearth/screens/homescreen.dart';
import 'package:child_hearth/screens/navigate.dart';
import 'package:child_hearth/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false; // To show loading indicator

  // Sign-up function
  void _signUpUser() async {
    setState(() {
      _isLoading = true;
    });

    String res = await AuthService().signUpUser(
      name: _nameController.text,
      email: _emailController.text,
      password: _passwordController.text,
    );

    setState(() {
      _isLoading = false;
    });

    if (res == "successfully") {
      Navigator.of(context).pushReplacement(SwipeablePageRoute(
        builder: (BuildContext context) => const HomeScreen(),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(res)),
      );
    }
  }

  // Custom text field widget
  Widget buildTextField({
    required String labelText,
    required Icon prefixIcon,
    required TextEditingController controller,
    bool obscureText = false,
    IconButton? suffixIcon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.grey),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Let\'s get',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
                  ),
                  const Text(
                    'Started!',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  buildTextField(
                    labelText: 'Enter Username',
                    prefixIcon: const Icon(Icons.person, color: Colors.blue),
                    controller: _nameController,
                  ),
                  const SizedBox(height: 25),
                  buildTextField(
                    labelText: 'Enter Email',
                    prefixIcon: const Icon(Icons.email, color: Colors.blue),
                    controller: _emailController,
                  ),
                  const SizedBox(height: 25),
                  buildTextField(
                    labelText: 'Enter Password',
                    prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                    controller: _passwordController,
                    obscureText: !_isPasswordVisible,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: ElevatedButton(
                      onPressed: _isLoading ? null : _signUpUser,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF007BFF),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minimumSize: const Size(double.infinity, 53),
                      ),
                      child: _isLoading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(height: 90),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(SwipeablePageRoute(
                        builder: (BuildContext context) =>
                        const NavigateScreen(),
                      ));
                    },
                    child: const Text(
                      "Already have an account? Sign In",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
