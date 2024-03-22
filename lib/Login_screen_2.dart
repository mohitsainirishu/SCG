import 'package:flutter/material.dart';
import 'package:scghealth/navigationbar.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color or image
          Container(
            color: Colors.deepPurple,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Circular avatar image
                      CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.transparent,
                        child: Image.asset("assets/splash.png"),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Login to SCG Health',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter your username",
                          icon: Icon(Icons.account_box),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter your password",
                          icon: Icon(Icons.lock),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      SizedBox(
                        height: 30,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Mohit()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple
                          ),
                          child: Text('Login'),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Trouble logging in ?",style: TextStyle(color: Colors.deepPurple,fontSize: 18),)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
