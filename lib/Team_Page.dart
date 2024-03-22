import 'package:flutter/material.dart';
import 'package:scghealth/main.dart';

void main() {
  runApp(MyApp());
}

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('Team'),
          centerTitle: true,
        ),
        body: NameList(),
      ),
    );
  }
}

class NameList extends StatelessWidget {
  final List<String> names = [
    'Sachin Deshpande',
    'ABC',
    'DEF',
    // Add more names as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.person_4_rounded),
          title: Text(names[index]),
        );
      },
    );
  }
}