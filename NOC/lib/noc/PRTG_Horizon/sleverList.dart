import 'package:flutter/material.dart';
import 'package:noc_app/noc/PRTG_Horizon/regionList.dart';
import 'package:noc_app/noc/PRTG_Horizon/test.dart';
import 'package:noc_app/noc/webportal.dart';
import 'package:noc_app/noc/zabbix.dart';

class sliverList extends StatelessWidget {

  List<double> details =[0.0,0.1];


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      //appBar: AppBar(title: Text("Baghdad and North reagin IT Networks")),


      body: CustomScrollView(

        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            title: Text("sliver list"),
            expandedHeight:350.0 ,
            flexibleSpace: FlexibleSpaceBar(
              background: test.withSampleData(),
            ) ,
          )
,
    SliverList(

        delegate: SliverChildListDelegate(

            <Widget>[

              regionList.withSampleData(),
              regionList.withSampleData(),
              regionList.withSampleData(),
              regionList.withSampleData(),
              regionList.withSampleData(),
              regionList.withSampleData(),
              regionList.withSampleData(),
//              test.withSampleData(),
//              test.withSampleData(),
//              test.withSampleData(),
//              test.withSampleData(),


            ],


    ))


        ],
      ),
    );
  }


}