
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
void main() {

  runApp(LineChartApp());
}
class LineChartApp extends StatefulWidget {
  @override
  State<LineChartApp> createState() => _LineChartAppState();
}

class _LineChartAppState extends State<LineChartApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text('Dashboard'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //SizedBox(height: ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            border: Border.all(
                              color: Colors.purpleAccent,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(child: Text("Total Orders",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)),
                      ),
                    )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        border: Border.all(
                          color: Colors.purpleAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(child: Text("Total Amount",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)),
                  ),
                )),
              ],
            ),
            //SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            border: Border.all(
                              color: Colors.purpleAccent,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(child: Text("Total Value",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)),
                      ),
                    )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        border: Border.all(
                          color: Colors.purpleAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(child: Text("Total Products",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)),
                  ),
                )),
              ],
            ),
            // SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            border: Border.all(
                              color: Colors.purpleAccent,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(child: Text("Medpreneur\nTotat Profit",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)),
                      ),
                    )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        border: Border.all(
                          color: Colors.purpleAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(child: Text("Disbursed Profit",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)),
                  ),
                )),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: LineChartsPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class LineChartsPage extends StatelessWidget {
  final List<String> chartTitles = [
    'Sales By Month',
    'Sales By City',
    'Sales By Employee Name',
  ];
  final List<List<String>> xData = [
    ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
    ['City A', 'City B', 'City C', 'City D', 'City E'],
    ['A', 'B', 'C', 'D', 'E'],
  ];
  final List<List<double>> yData = [
    [100.0, 150.0, 200.0, 180.0, 250.0, 300.0, 280.0, 320.0, 400.0, 370.0, 450.0, 500.0],
    [100.0, 600.0, 550.0, 700.0, 650.0],
    [100.0, 180.0, 220.0, 240.0, 210.0,300,400],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chartTitles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chartTitles[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              LineChartWidget(
                xData: xData[index],
                yData: yData[index],
              ),
              SizedBox(height: 12),

            ],
          ),
        );
      },
    );
  }
}

class LineChartWidget extends StatelessWidget {
  final List<String> xData;
  final List<double> yData;

  LineChartWidget({required this.xData, required this.yData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: List.generate(xData.length, (index) {
                return FlSpot(index.toDouble(), yData[index]);
              }),
              isCurved: true,
              colors: [Colors.purpleAccent],
              barWidth: 4,
              isStrokeCapRound: true,
              belowBarData: BarAreaData(show: false),
            ),
          ],
          titlesData: FlTitlesData(
           leftTitles: SideTitles(
              showTitles: true,
              margin: 8,
              reservedSize: 30,
              interval: 100,
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              margin: 8,
              reservedSize: 30,
              interval: 2,
              getTitles: (value) {
                return xData[value.toInt()];
              },
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.black, width: 1),
          ),
          minX: 0,
          maxX: xData.length.toDouble() - 1,
          minY: 0,
          maxY: yData.reduce((value, element) => value > element ? value : element) * 1.2,
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            horizontalInterval: 100,
          ),
        ),
      ),
    );
  }
}
