import 'package:flutter/material.dart';

import 'create_account_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),

            // Illustration
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Image.asset(
                'assets/graphic-1.png',
                height: 273,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 40),

            // Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Stay on top of your finance with us.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Subtitle
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "We are your new financial Advisors to recommend the best investments for you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SF-Pro-Text',
                  fontSize: 17,
                  color: Color(0xFF4F4F4F),
                ),
              ),
            ),

            const Spacer(),

            // Create Account Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to registration
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => CreateAccountScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Color(0xFF31A062), // Green
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  "Create account",
                  style: TextStyle(
                      fontFamily: 'SF-Pro-Text',
                      fontSize: 17,
                      color: Color(0xFFFFFFFF),
                      ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Login link
            GestureDetector(
              onTap: () {
                // Navigate to login
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              },
              child: const Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'SF-Pro-Text',
                  fontSize: 17,
                  color: Color(0xFF31A062),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
