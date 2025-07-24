import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAssetPage extends StatelessWidget {
  final String planName;
  final Color color;

  const MyAssetPage({Key? key, required this.planName, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7FA),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('My Asset',
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    )
                ),
                SizedBox(width: 50),
               // Icon(Icons.close, color: Color(0xFFB3B3B3), size: 32,),
                Image.asset(
                  "assets/close_button.png",width: 26,
                  height: 26,
                  fit: BoxFit.contain,),
              ],
            ),
            SizedBox(height: 20),
            Text("Your total asset portfolio",
                style: TextStyle(  fontFamily: 'SF-Pro-Text',
                  fontSize: 16,
                  color: Color(0xFFB3B3B3),)),
            SizedBox(height: 5),
            Row(
              children: [
                Text("N203,935",
                    style:
                    TextStyle( fontFamily: 'SF-Pro-Display',
                      fontSize: 32,
                      color: Color(0xFF000000),
                    )),
                SizedBox(width: 10),
               // Icon(Icons.arrow_drop_up, color: Color(0xFF00B907)),
                Image.asset(
                  "assets/upvote.png",width: 16,
                  height: 16,
                  fit: BoxFit.contain,),
                Text("+2%", style: TextStyle( fontFamily: 'SF-Pro-Display',
                  fontSize: 11,
                  color: Color(0xFF00B907),
                )),
              ],
            ),
            SizedBox(height: 30),
            Text('Current Plans',
                style: TextStyle( fontFamily: 'DMSans',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                )
            ),
            SizedBox(height: 10),
            Container(
              height: 207,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Positioned(
                    bottom: -20,
                    right: -20,
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.asset(
                        "assets/gold_coin_bg.png",
                        width: 300,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gold",
                          style: TextStyle(
                            fontFamily: 'SF-Pro-Text',
                            fontSize: 18,
                            color: Color(0xFF000000),
                          )),
                      Text("30% return",
                          style: TextStyle( fontFamily: 'SF-Pro-Text',
                            fontSize: 13,
                            color: Color(0xFF0B2517),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text("See All Plans →",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SF-Pro-Display',
                  fontSize: 18,
                  color: Color(0xFFFE555D),
                )),
            SizedBox(height: 30),
            Text('History',
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                )),
            SizedBox(height: 10),
            ..._buildHistoryList(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildHistoryList() {
    final historyItems = [
      {
        "amount": "Rp 200.000",
        "color": Colors.black,
        "desc": 'Buy "APPL" Stock',
        "date": "TUE 22 Jun 2020"
      },
      {
        "amount": "Rp 150.000",
        "color": Colors.green,
        "desc": 'Sell "TLKM" Stock',
        "date": "TUE 22 Jun 2020"
      },
      {
        "amount": "Rp 1.000.240",
        "color": Colors.black,
        "desc": 'Buy "FB" Stock',
        "date": "TUE 22 Jun 2020"
      },
      {
        "amount": "Rp 1.000.240",
        "color": Colors.green,
        "desc": 'Sell "APPL" Stock',
        "date": "TUE 22 Jun 2020"
      },
    ];

    return historyItems.map((item) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['amount'] as String,
                        style: TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 18,
                            color: item['color'] as Color,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text(item['desc'] as String,
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Display',
                          fontSize: 14,
                          color: Color(0xFFB3B3B3),
                        )),
                  ],
                ),
                Text(item['date'] as String,
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Display',
                      fontSize: 14,
                      color: Color(0xFFB3B3B3),
                    )),
              ],
            ),
            const SizedBox(height: 8),
            const Divider(thickness: 1, color: Color(0xFFB3B3B3)),
          ],
        ),
      );
    }).toList();


  }
}