import 'package:flutter/material.dart';
import 'package:investify/pages/plan_detail_page.dart';
import 'package:investify/pages/profile_screen.dart';
import 'my_asset_page.dart';
import 'notification_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color green = Color(0xFF28A06E);
  final Color bgColor = Color(0xFFF7F7FA);

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeContent(), // Now has its own AppBar
    Center(child: Text("Product Page")),
    Center(child: Text("Transaction Page")),
    ProfileScreen(), // Already has its own Scaffold and AppBar
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: green,
        unselectedItemColor: Color(0xFF999999),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Product"),
          BottomNavigationBarItem(icon: Icon(Icons.sync_alt), label: "Transaction"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}


// Extract HomeContent as a separate widget
class HomeContent extends StatelessWidget {
  final Color green = Color(0xFF258B66);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF7F7FA),
        leading: Icon(Icons.menu, color: Color(0xFF000000)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
              child: Image.asset(
                "assets/notification_icon.png",
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
            ),

          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Text('Welcome, Gbolahan.',
              style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
              )),
          SizedBox(height: 20),
          Container(
            height: 146,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your total asset portfolio',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Text',
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        )),
                    SizedBox(height: 10),
                    Text('₦203,935',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Display',
                          fontSize: 32,
                          color: Color(0xFFFFFFFF),
                        )),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Invest now'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF31A078),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Best Plans',
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  )),
              Text('See All →',
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Display',
                    fontSize: 18,
                    color: Color(0xFFFE555D),
                  )),
            ],
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildPlanCard(context, title: "Gold", subtitle: "30% return", color: Colors.amber, imagePath: 'assets/gold_coin_bg.png'),
                buildPlanCard(context, title: "Silver", subtitle: "60% return", color: Colors.grey, imagePath: 'assets/silver_coin_bg.png'),
                buildPlanCard(context, title: "Platinum", subtitle: "90% return", color: Colors.deepPurple, imagePath: 'assets/platinum_coin_bg.png'),
              ],
            ),
          ),
          SizedBox(height: 30),
          Text('Investment Guide',
              style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
              )),
          SizedBox(height: 16),
          buildGuideItem("Basic type of investments",
              "This is how you set your foot for 2020 Stock market recession. What’s next...", "assets/ellipse.png"),
          Divider(),
          buildGuideItem("How much can you start wit..",
              "What do you like to see? It’s a very different market from 2018. The way...", "assets/ellipse2.png"),
        ],
      ),
    );
  }

  Widget buildPlanCard(BuildContext context,
      {required String title, required String subtitle, required Color color, required String imagePath}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyAssetPage(planName: title, color: color),
          ),
        );
      },
      child: Container(
        width: 120,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Positioned(
              bottom: -20,
              right: -20,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  imagePath,
                  width: 80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'SF-Pro-Text',
                    fontSize: 17,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontFamily: 'SF-Pro-Text',
                    fontSize: 13,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGuideItem(String title, String description, String imagePath) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      title: Text(title,
          style: TextStyle(
            fontFamily: 'DMSans',
            fontSize: 18,
            color: Color(0xFF474747),
          )),
      subtitle: Text(description,
          style: TextStyle(
            fontFamily: 'SF-Pro-Display',
            fontSize: 14,
          )),
      trailing: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.grey.shade200,
        child: Image.asset(
          imagePath,
          width: 61,
          height: 61,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
