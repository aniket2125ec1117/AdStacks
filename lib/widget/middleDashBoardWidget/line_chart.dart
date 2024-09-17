import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerformanceGraph extends StatelessWidget {
  const PerformanceGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          
          Positioned(
            top: 60, 
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 280, 
              child: LineChart(
                LineChartData(
                  titlesData: FlTitlesData(
                    show: true,
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 10,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: const TextStyle(color: Colors.grey),
                          );
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: const TextStyle(color: Colors.grey),
                          );
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      shadow: Shadow(blurRadius: 100, color: Colors.red),
                      spots: getPendingData(),
                      isCurved: true,
                      color: Colors.redAccent,
                      barWidth: 4,
                      isStrokeCapRound: true,
                      
                    ),
                    LineChartBarData(
                      spots: getDoneData(),
                      isCurved: true,
                      color: Colors.blueAccent,
                      barWidth: 4,
                      isStrokeCapRound: true,
                      
                    ),
                  ],
                  minX: 2015,
                  maxX: 2023,
                  minY: 0,
                  maxY: 50,
                ),
              ),
            ),
          ),
          
          const Positioned(
            top: 0,
            left: 30,
            child: Text(
              'Over All Performance \n The Years',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          const Positioned(
            top: 0,
            right: 5,
            child: Row(
              children: [
                CircleAvatar(backgroundColor: Colors.redAccent,radius: 5,),
                SizedBox(width: 10,),
                Text(
                  'Pending \n Done',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10,),
                CircleAvatar(backgroundColor: Colors.blueAccent,radius: 5,),
                SizedBox(width: 10,),
                Text(
                  'Project \n Done',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 30,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<FlSpot> getPendingData() {
    return const [
      FlSpot(2015, 30),
      FlSpot(2016, 40),
      FlSpot(2017, 20),
      FlSpot(2018, 35),
      FlSpot(2019, 45),
      FlSpot(2020, 25),
      FlSpot(2021, 30),
      FlSpot(2022, 40),
      FlSpot(2023, 55),
    ];
  }

  List<FlSpot> getDoneData() {
    return const [
      FlSpot(2015, 10),
      FlSpot(2016, 20),
      FlSpot(2017, 25),
      FlSpot(2018, 30),
      FlSpot(2019, 35),
      FlSpot(2020, 40),
      FlSpot(2021, 20),
      FlSpot(2022, 35),
      FlSpot(2023, 45),
    ];
  }
}
