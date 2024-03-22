import 'package:flutter/material.dart';
import 'package:scghealth/main.dart';
void main() {
  runApp(MyApp());
}
class Stockiest extends StatelessWidget {
  final List<Map<String, dynamic>> dataList = [
    {
      'title': 'SIDDHI ENTERPRISES\n9755511010',
      'children': [
        {'subtitle': 'city'},
        {'subtitle': 'Drug Licence NO:'},
        {'subtitle': "GSTIN:"},
        {'subtitle': 'Address:'},
      ],
    },
    {
      'title': 'PRAYAS MEDICAL STORE\n9691608565',
      'children': [
        {'subtitle': 'city'},
        {'subtitle': 'Drug Licence NO:'},
        {'subtitle': "GSTIN:"},
        {'subtitle': 'Address:'},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      //title: 'Expansion Tile Example',
      home: Scaffold(
        appBar: AppBar(
         backgroundColor: Colors.purpleAccent,
          title: Text('Stockiest'),
        ),
        body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(dataList[index]['title']),
              //title: Text(dataList[index]['titles']),
              leading: Icon(Icons.person),
              backgroundColor: Colors.grey[300],
              children: List.generate(
                dataList[index]['children'].length,
                    (childIndex) {
                  return ListTile(
                    title: Text(dataList[index]['children'][childIndex]['subtitle']),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
