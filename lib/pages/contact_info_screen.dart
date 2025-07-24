import 'package:flutter/material.dart';

class ContactInfoScreen extends StatelessWidget {
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
        title: Text('Contact info',
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
                children: [
                  CircleAvatar(
                    radius: 60,
                    // Replace with your image asset or network image
                    backgroundImage: AssetImage('assets/gbola.jpeg'), // Placeholder
                    // Or NetworkImage('https://gbolahan.com/profile_pic.jpg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.grey[700],
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            _buildInfoRow(
              context,
              label: 'Name',
              value: 'Adegbola Gbolahan',
              onPressed: () {
                // Handle change name
              },
            ),
            _buildDivider(),
            _buildInfoRow(
              context,
              label: 'Birthdate',
              value: '01 January 2000',
              onPressed: () {
                // Handle change birthdate
              },
            ),
            _buildDivider(),
            _buildInfoRow(
              context,
              label: 'Gender',
              value: 'Male',
              onPressed: () {
                // Handle change gender
              },
            ),
            _buildDivider(),
            _buildInfoRow(
              context,
              label: 'Email',
              value: 'gbolissimo@@gmail.com',
              onPressed: () {
                // Handle change email
              },
            ),
            _buildDivider(),
            _buildInfoRow(
              context,
              label: 'Phone Number',
              value: '-',
              onPressed: () {
                // Handle change phone number
              },
            ),
            _buildDivider(),
            _buildInfoRow(
              context,
              label: 'Address',
              value: '-',
              onPressed: () {
                // Handle change address
              },
            ),
            _buildDivider(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, {required String label, required String value, VoidCallback? onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(
                  fontFamily: 'SF-Pro-Display',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              'Change',
              style: TextStyle(
                fontFamily: 'SF-Pro-Text',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xFF31A05F),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      color: Colors.grey[300],
      thickness: 1,
      indent: 0,
      endIndent: 0,
    );
  }
}