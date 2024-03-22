import 'package:flutter/material.dart';
import 'package:scghealth/Login_screen_2.dart';
import 'package:scghealth/main.dart';

void main() {
  runApp(MyApp());
}

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogoutPage(
        user: User(
          name: 'Synthomed Research Private Limited',
          mobileNumber: '9827662030',
          address: '90,staya dev behind hawa banglow sudama nagar indore ',
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String mobileNumber;
  final String address;

  User({
    required this.name,
    required this.mobileNumber,
    required this.address,
  });
}

class LogoutPage extends StatelessWidget {
  final User user;

  LogoutPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Name: ${user.name}'),
            ),
            ListTile(
              title: Text('Mobile Number: ${user.mobileNumber}'),
            ),
            ListTile(
              title: Text('Address: ${user.address}'),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 240,

              child: ElevatedButton(


                onPressed: () {
                  // Perform logout actions here
                  // For demonstration purposes, navigate to the login page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent
                ),
                child: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

