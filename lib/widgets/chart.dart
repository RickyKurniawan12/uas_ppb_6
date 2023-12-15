import 'package:flutter/material.dart';
import 'package:ppb/widgets/chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

@override
State<Chart> createState() => _ChartState();

  _ChartState() {} 

}

class _MyWidgetState extends State<Chart> {
  @override
  Widget build(BuildContext){
    return 
      Container(width: double.infinity,
       height: 400,
       child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <SplineSeries<SalesData,String>>[
       SplineSeries<SalesData, String>(
  dataSource: <SalesData>[
    SalesData(100, 'mon'),
    SalesData(20, 'tue'),
    SalesData(40, 'wed'),
    SalesData(15, 'sat'),
    SalesData(5, 'sun'),
  ],
  xValueMapper: (SalesData sales, _) => sales.year,
  yValueMapper: (SalesData sales, _) => sales.sales,
)
        ]
          )
       );
  }
}
class SalesData{
  SalesData(this.sales, this.year);
  final String year;
  final int sales;
}