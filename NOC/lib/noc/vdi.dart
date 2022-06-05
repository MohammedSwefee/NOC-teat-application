
import 'package:flutter/material.dart';
import 'package:noc_app/noc/vdiBag.dart';
import 'package:noc_app/noc/vdiBas.dart';




class vdi extends StatelessWidget {

  List<Widget> vdiPages = [vdiBag(), vdiBas()];


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