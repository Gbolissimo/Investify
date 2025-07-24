import 'package:flutter/material.dart';

class BankAccountInfoScreen extends StatelessWidget {
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
        title: Text(
          'Bank of account info',
          style: TextStyle(
            fontFamily: 'SF-Pro-Display',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildBankAccountCard(
              context,
              bankLogo: 'assets/bank_of_america_logo.png', // Placeholder
              bankName: 'Bank of Amrica',
              accountNumber: '0182128xxx',
              accountHolder: 'Adegbola Gbolahan',
            ),
            SizedBox(height: 16),
            _buildBankAccountCard(
              context,
              bankLogo: 'assets/zenith_bank_logo.png', // Placeholder
              bankName: 'Zenith Bank',
              accountNumber: '0182128xxx',
              accountHolder: 'Adegbola Gbolahan',
            ),
            Spacer(), // Takes up remaining space to push the button to the bottom
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle Add account button press
                  print('Add account button pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF31A062), // Background color
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                ),
                child: Text(
                  'Add account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), // Padding at the bottom
          ],
        ),
      ),
    );
  }

  Widget _buildBankAccountCard(
      BuildContext context, {
        required String bankLogo,
        required String bankName,
        required String accountNumber,
        required String accountHolder,
      }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 47,
              height: 47,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(bankLogo), // Use AssetImage for local assets
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$bankName - $accountNumber',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Display',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF555555),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    accountHolder,
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Handle more options for this bank account
                print('More options for $bankName');
              },
            ),
          ],
        ),
      ),
    );
  }
}