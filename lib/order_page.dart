import 'package:flutter/material.dart';
import 'package:scghealth/main.dart';

void main() {
  runApp(MyApp());
}

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.purpleAccent,

          title: Text('Orders (2)'),
         //  actions: [
         //    Center(child: Text('Total Orders: 10')),
         //    Center(child: Text('Total Invoices: 5')),
         //  ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                tileColor: Colors.grey[200],
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Invoice: A000059'),
                    const Text("SAISUN PHARMA PVT.LTD",style: TextStyle(color: Colors.red),),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('January 16,2024'),
                    const Text('Total: \$22,752',style: TextStyle(color: Colors.purpleAccent),),
                  ],
                ),
                dense: false,
              ),
              ExpansionTile(
                iconColor: Colors.grey[200],
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('LINCRETA',style: TextStyle(color: Colors.black),),
                    Text("Batch: T-2401011",style: TextStyle(color: Colors.black),),
                  ],
                ),
                //subtitle: Text("Quantity 20 "),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   const Text("Quantity:20",style: TextStyle(color: Colors.black),),
                    const Text('Total: \$22,752',style: TextStyle(color: Colors.black),),
                  ],
                ),
                children: [
                  Container(
                    color: Colors.purpleAccent,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Invoice no: A000083'),
                        Text('Employee: sachin Deshpande'),
                        Text('city:indore'),
                        Text('Stockist GSTIN: 2435637SYAG'),
                        Text('Batch:ST-231877'),
                        Text('PTS: 1074'),
                        Text('PTR: 1193'),
                        Text('PACK: 10X10'),
                        Text('MRP: 1670'),
                        Text('SGST: 0%'),
                        Text('CGST: 0%'),
                        Text('IGST: 12%'),
                        Text('Quantity: 56'),
                        Text('Total:67336'),
                        Text('Value:60121'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              ListTile(
                tileColor: Colors.grey[200],
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Invoice: A000060'),
                    const Text("SAISUN PHARMA PVT.LTD",style: TextStyle(color: Colors.red),),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('January 16,2024'),
                    const Text('Total: \$22,752',style: TextStyle(color: Colors.purpleAccent),),
                  ],
                ),
                dense: false,
              ),
              ExpansionTile(
                iconColor: Colors.grey[200],
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('LINCRETA',style: TextStyle(color: Colors.black),),
                    Text("Batch: T-2401011",style: TextStyle(color: Colors.black),),
                  ],
                ),
                //subtitle: Text("Quantity 20 "),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Quantity:20",style: TextStyle(color: Colors.black),),
                    const Text('Total: \$22,752',style: TextStyle(color: Colors.black),),
                  ],
                ),
                children: [
                  Container(
                    color: Colors.purpleAccent,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Invoice no: A000083'),
                        Text('Employee: sachin Deshpande'),
                        Text('city:indore'),
                        Text('Stockist GSTIN: 2435637SYAG'),
                        Text('Batch:ST-231877'),
                        Text('PTS: 1074'),
                        Text('PTR: 1193'),
                        Text('PACK: 10X10'),
                        Text('MRP: 1670'),
                        Text('SGST: 0%'),
                        Text('CGST: 0%'),
                        Text('IGST: 12%'),
                        Text('Quantity: 56'),
                        Text('Total:67336'),
                        Text('Value:60121'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
