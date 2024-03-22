import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:scghealth/Account_page.dart';
import 'package:scghealth/Home_page.dart';
import 'package:scghealth/Stockiest_page.dart';
import 'package:scghealth/Team_Page.dart';
import 'package:scghealth/main.dart';
import 'package:scghealth/order_page.dart';
void main() {
  runApp(MyApp());
}

class Mohit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          LineChartApp(),
          Order(),
          Team(),
          Stockiest(),
          Logout(),

        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.purpleAccent,
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: "Home",

          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.edit_note),
            label: "Order",
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.man),
            label: "Team",
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.dataset_outlined),
            label: "Stockist",
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.person),
            label: "Account",
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
