import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Material myItems(IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Colors.blueGrey,
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        heading,
                        style: TextStyle(color: Color(color), fontSize: 20.0),
                      ),
                    ),
                  ),
                  Material(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NOC APP")),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[


          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/zabbix');
              },
              child: myItems(
                Icons.storage,
                "Zabbix",
                0xff3399fe,
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/sliverList');
              },
              child: myItems(
                Icons.network_check,
                "PRTG",
                0xffff3266,
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/iManager');
              },
              child: myItems(
                Icons.settings_input_antenna,
                "I2000",
                 0xff1cC060,
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/vdi');
              },
              child: myItems(
                Icons.tv,
                "VDI",
                0xffCdF62b 	,
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/whatsUp');
              },
              child: myItems(
                Icons.devices,
                "WhatsUp",
                0xfff4c83f 	,
              )),

          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/net');
              },
              child: myItems(
                Icons.domain,
                "Internet Service for IT sites",
                0xffed622b 	,
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/mfs');
              },
              child: myItems(
                Icons.announcement,
                "MFS",
                0xffff3266 	,
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/netact');
              },
              child: myItems(
                Icons.track_changes,
                "NETACT",
                0xffff3266 	,
              )),
         // myItems(Icons.domain, "Internet Service for IT sites", 0xffed622b),
         // myItems(Icons.announcement, "MFS", 0xffff3266),
          //myItems(Icons.track_changes, "NETACT", 0xffff3266),
         // myItems(Icons.alarm, "I2000", 0xfff4c83f),
         // myItems(Icons.alarm, "Web Portal", 0xfff4c83f),

          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/webportal');
              },
              child: myItems(
                Icons.devices,
                "Web Portal",
                0xfff4c83f 	,
              )),


        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 180.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(2, 180.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(2, 180.0),
        ],
      ),
    );
  }
}
