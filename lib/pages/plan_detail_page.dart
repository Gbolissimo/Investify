import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanDetailPage extends StatelessWidget {
  final String planName;
  final Color color;

  const PlanDetailPage({Key? key, required this.planName, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$planName Plan'),
        backgroundColor: color,
      ),
      body: Center(
        child: Text(
          'Details about the $planName investment plan will be shown here.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
