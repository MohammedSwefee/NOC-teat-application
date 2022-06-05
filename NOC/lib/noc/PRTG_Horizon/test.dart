import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:noc_app/main_app_bar.dart';

class test extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  test(this.seriesList, {this.animate});

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory test.withSampleData() {
    return new test(

      _createSampleData(),
      // Disable animations for image tests.
      animate: true,

    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(

            child:SizedBox(

              height: 250.0,
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
              )),

        );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesSales(new DateTime(2017, 9, 19), 50,),
      new TimeSeriesSales(new DateTime(2017, 9, 20), 40,),
      new TimeSeriesSales(new DateTime(2017, 9, 21), 60,),
      new TimeSeriesSales(new DateTime(2017, 9, 22), 75,),
      new TimeSeriesSales(new DateTime(2017, 9, 23), 50,),
      new TimeSeriesSales(new DateTime(2017, 9, 24), 40,),
      new TimeSeriesSales(new DateTime(2017, 9, 25), 60,),
      new TimeSeriesSales(new DateTime(2017, 9, 26), 75,),
      new TimeSeriesSales(new DateTime(2017, 9, 27), 50,),
      new TimeSeriesSales(new DateTime(2017, 9, 28), 40,),
      new TimeSeriesSales(new DateTime(2017, 9, 29), 60,),
      new TimeSeriesSales(new DateTime(2017, 9, 30), 75,),
      new TimeSeriesSales(new DateTime(2017, 9, 31), 150,),

    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        //displayName: "test name",

        data: data,

      )
    ];
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;
  //final String name;

  TimeSeriesSales(this.time, this.sales, /*this.name*/);
}
