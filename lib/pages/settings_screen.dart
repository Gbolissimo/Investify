import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
            Navigator.pop(context);
          },
        ),
        title: Text('Settings',
          style: TextStyle(
            fontFamily: 'SF-Pro-Display',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Stack(

              ),
            ),

          ],
        ),
      ),
    );
  }

}