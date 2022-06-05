import 'package:flutter/material.dart';
import 'package:noc_app/Dashboard.dart';
import 'package:noc_app/noc/PRTG_Horizon/mychart.dart';
import 'package:noc_app/noc/mfs.dart';
import 'package:noc_app/noc/net.dart';
import 'package:noc_app/noc/netact.dart';
import 'package:noc_app/noc/PRTG_Horizon/sleverList.dart';
import 'package:noc_app/noc/PRTG_Horizon/test.dart';
import 'package:noc_app/noc/vdi.dart';
import 'package:noc_app/noc/webportal.dart';
import 'package:noc_app/noc/whatsUp.dart';
import 'package:noc_app/noc/zabbix.dart';
import 'package:noc_app/noc/iManager.dart';
import 'package:noc_app/noc/prtg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT NOC',
      routes: <String , WidgetBuilder>{
        '/zabbix': (BuildContext  context) => ListPage(),
        '/prtg': (BuildContext  context) =>  SimpleTimeSeriesChart.withSampleData(),
        '/iManager': (BuildContext  context) => iManager(),
        '/vdi': (BuildContext  context) => vdi(),
        '/whatsUp': (BuildContext  context) => whatsUp(),
        '/webportal': (BuildContext  context) => webportal.withSampleData(),
        '/net': (BuildContext  context) => net(),
        '/mfs': (BuildContext  context) => mfs(),
        '/netact': (BuildContext  context) => netact(),
        '/sliverList': (BuildContext  context) => sliverList(),
        '/test': (BuildContext  context) => test.withSampleData(),
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}


