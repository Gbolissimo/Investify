import 'package:flutter/material.dart';
import 'package:investify/pages/document_info_screen.dart';
import 'package:investify/pages/settings_screen.dart';

import 'bank_account_info_screen.dart';
import 'contact_info_screen.dart';
import 'fund_sources_screen.dart';
import 'notification_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'DMSans',
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Column(
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/gbola.jpeg'),
                ),
                SizedBox(height: 12),
                Text(
                  'Adegbola Gbolahan',
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Expert',
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Text',
                    fontSize: 17,
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Tappable Tiles
            _buildProfileTile(context, "assets/contact_icon.png", 'Contact Info', ContactInfoScreen()),
            _buildProfileTile(context, "assets/source_icon.png", 'Source of Funding Info', FundSourcesScreen()),
            _buildProfileTile(context, "assets/bank_icon.png", 'Bank Account Info', BankAccountInfoScreen()),
            _buildProfileTile(context, "assets/document_icon.png", 'Document Info', DocumentInfoScreen()),
            _buildProfileTile(context, "assets/setting_icon.png", 'Settings', SettingsScreen()),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileTile(BuildContext context, String imagePath, String title, Widget destinationPage) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: 'SF-Pro-Text',
                  fontSize: 17,
                  color: Color(0xFF333333),
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
