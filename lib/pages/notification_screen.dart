import 'package:flutter/material.dart';

import '../config/app_config.dart';

class NotificationScreen extends StatelessWidget {
  // Sample data for notifications
  final List<Map<String, String>> notifications = [
    {
      'image': 'assets/gbola.jpeg',
      'title': 'Apple stocks just increased Check it out now.',
      'time': '15min ago',
    },
    {
      'image': 'assets/gbola.jpeg',
      'title': 'Check out today\'s best inves-tor. You\'ll learn from him',
      'time': '3min ago',
    },
    {
      'image': 'assets/gbola.jpeg',
      'title': 'Where do you see yourself in the next ages.',
      'time': '30secs ago',
    },
  ];

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
          'Notification',
          style: TextStyle(
            fontFamily: 'DMSans',
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: false, // Align title to the left
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return _NotificationItem(
            imageUrl: notification['image']!,
            title: notification['title']!,
            time: notification['time']!,
          );
        },
      ),
    );
  }
}

class _NotificationItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;

  const _NotificationItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(imageUrl), // Use AssetImage for local assets
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Display',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                time,
                style: TextStyle(
                  fontFamily: 'SF-Pro-Display',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
          SizedBox(height: 10), // Space before the divider
          Divider(
            color: Colors.grey[300],
            thickness: 1,
            height: 1,
          ),
        ],
      ),
    );
  }
}