import 'package:flutter/material.dart';
import 'package:investify/pages/create_account_screen.dart';
import 'package:investify/pages/home_page.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

 LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF000000)),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Welcome back!",
                style: TextStyle(
                  fontFamily: 'SF-Pro-Text',
                  fontSize: 17,
                  color: Color(0xFF4F4F4F),
                ),
              ),

              const SizedBox(height: 40),

              // Email address field
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email address',
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password field
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Create Account Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Validate and submit here using BLoC or any handler
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF34A853),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Text',
                      fontSize: 17,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Don't have an account?
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to home screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CreateAccountScreen()),
                    );
                  },
                  child: const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Text',
                      fontSize: 17,
                      color: Color(0xFF31A062),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
