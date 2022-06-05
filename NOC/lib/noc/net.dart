
import 'package:flutter/material.dart';
import 'package:noc_app/noc/neta.dart';
import 'package:noc_app/noc/netb.dart';




class net extends StatelessWidget {

  List<Widget> vdiPages = [neta.withSampleData(), netb.withSampleData()];


  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, position) => vdiPages[position],
        itemCount: vdiPages.length,
      )
      ,
    );
  }

}