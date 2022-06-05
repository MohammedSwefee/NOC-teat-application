
import 'package:flutter/material.dart';
import 'package:noc_app/noc/northNetwork.dart';
import 'package:noc_app/noc/servers.dart';
import 'package:noc_app/noc/southNetwork.dart';



class whatsUp extends StatelessWidget {

  List<Widget> vdiPages = [southNetwork(), northNetwork(),servers()];


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