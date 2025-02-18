import 'package:child_hearth/screens/navigate.dart';
import 'package:child_hearth/screens/signUp.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isPasswordVisible = false;

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
                  _buildWelcomeText(),
                  const SizedBox(height: 30),
                  _buildUsernameField(),
                  const SizedBox(height: 25),
                  _buildPasswordField(),
                  const SizedBox(height: 40),
                  _buildSignInButton(),
                  const SizedBox(height: 40),
                  const Text('Or'),
                  const SizedBox(height: 40),
                  _buildGoogleSignInButton(),
                  const SizedBox(height: 50),
                  _buildSignUpLink(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return const Column(
      children:  [
        Text(
          'Welcome',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
        ),
        Text(
          'Back!',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildUsernameField() {
    return _buildTextField(
      labelText: 'Enter username',
      prefixIcon: Icons.person,
      obscureText: false,
    );
  }

  Widget _buildPasswordField() {
    return _buildTextField(
      labelText: 'Enter Password',
      prefixIcon: Icons.lock,
      obscureText: !_isPasswordVisible,
      suffixIcon: IconButton(
        icon: Icon(
          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: Colors.blue,
        ),
        onPressed: () {
          setState(() {
            _isPasswordVisible = !_isPasswordVisible;
          });
        },
      ),
    );
  }

  Widget _buildTextField({
    required String labelText,
    required IconData prefixIcon,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Icon(prefixIcon, color: Colors.blue),
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

  Widget _buildSignInButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23), // Left & Right padding
      child: ElevatedButton(
        onPressed: () {
          print('Sign In Button Pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF007BFF),
          padding: const EdgeInsets.symmetric(vertical: 15), // Adjust height
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          minimumSize: const Size(double.infinity, 53), // Full width
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _buildGoogleSignInButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23), // Left & Right padding
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(SwipeablePageRoute(
            builder: (BuildContext context) => const NavigateScreen(),
          ));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15), // Adjust height
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Colors.grey[900]!),
          ),
          minimumSize: const Size(double.infinity, 55), // Full width
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                "assets/icons/google.png",
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 10,),
            const Text(
              'Sign In with Google account',
              style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildSignUpLink() {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(SwipeablePageRoute(
          builder: (BuildContext context) => const SignUpScreen(),
        ));
      },
      child: const Text(
        "Already have an account. Sign Up",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
