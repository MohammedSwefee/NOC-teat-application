import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:noc_app/main_app_bar.dart';

class regionList extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  regionList(this.seriesList, {this.animate});

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory regionList.withSampleData() {
    return new regionList(

      _createSampleData(),
      // Disable animations for image tests.
      animate: true,

    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(

          child:ListTile(
            //subtitle: Text("Current traffic :25.5 ugviuth8tbttv ib7tb696 87th9ng 6ttg976g i76f7f igi if ifi ko7f6gv"),

            enabled: true,
            //contentPadding:EdgeInsets.all(1.0) ,
            isThreeLine: true,
            onTap:()=>1 ,

            subtitle:    Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[

                      CircleAvatar(child: Text('UP',style: TextStyle(color: Colors.white),),backgroundColor: Colors.green  ),
                      Text("SGSN NAJ"),
                      Wrap(children: <Widget>[
                        Text("Current traffic :25.5")
                      ],),
                    ],
                  ),
                ),
                SizedBox(

                    width: 240.0,
                    height: 150.0,
                    child: charts.TimeSeriesChart(

                      seriesList,
                      // ,primaryMeasureAxis: MainAxisAlignment.start,
                      animate: animate,
                      // layoutConfig:
                      // domainAxis:  charts.OrdinalAxisSpec(showAxisLine: true,),

                      dateTimeFactory: const charts.LocalDateTimeFactory(),
                      animationDuration: Duration(seconds: 1),
                      layoutConfig: new charts.LayoutConfig(
                          leftMarginSpec: new charts.MarginSpec.fixedPixel(50),
                          topMarginSpec: new charts.MarginSpec.fixedPixel(50),
                          rightMarginSpec: new charts.MarginSpec.fixedPixel(50),
                          bottomMarginSpec: new charts.MarginSpec.fixedPixel(50)),
                    ))

                ,




              ],
            ),



          ),

          //CircleAvatar(child: Text('UP',style: TextStyle(color: Colors.white),),backgroundColor: Colors.green  ),
          //Text("SGSN NAJ",),
         /* SizedBox(


              width: 180.0,
              height: 160.0,
              child: charts.TimeSeriesChart(

                seriesList,
                // ,primaryMeasureAxis: MainAxisAlignment.start,
                animate: animate,
                // layoutConfig:
                // domainAxis:  charts.OrdinalAxisSpec(showAxisLine: true,),

                dateTimeFactory: const charts.LocalDateTimeFactory(),
                animationDuration: Duration(seconds: 1),
                layoutConfig: new charts.LayoutConfig(
                    leftMarginSpec: new charts.MarginSpec.fixedPixel(50),
                    topMarginSpec: new charts.MarginSpec.fixedPixel(50),
                    rightMarginSpec: new charts.MarginSpec.fixedPixel(50),
                    bottomMarginSpec: new charts.MarginSpec.fixedPixel(50)),
              )),*/
          //Text("282.056")

        //],


    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesSales(new DateTime(2017, 9, 19), 50),
      new TimeSeriesSales(new DateTime(2017, 9, 20), 40),
      new TimeSeriesSales(new DateTime(2017, 9, 21), 60),
      new TimeSeriesSales(new DateTime(2017, 9, 22), 75),
      new TimeSeriesSales(new DateTime(2017, 9, 23), 50),
      new TimeSeriesSales(new DateTime(2017, 9, 24), 40),
      new TimeSeriesSales(new DateTime(2017, 9, 25), 60),
      new TimeSeriesSales(new DateTime(2017, 9, 26), 75),
      new TimeSeriesSales(new DateTime(2017, 9, 26), 100),
      new TimeSeriesSales(new DateTime(2017, 9, 27), 50),
      new TimeSeriesSales(new DateTime(2017, 9, 28), 40),
      new TimeSeriesSales(new DateTime(2017, 9, 29), 60),
      new TimeSeriesSales(new DateTime(2017, 9, 30), 75),
      new TimeSeriesSales(new DateTime(2017, 9, 31), 110),
    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,

      )
    ];
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
