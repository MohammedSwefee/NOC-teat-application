
import 'package:flutter/material.dart';
import 'package:noc_app/layout_type.dart';


class Alarm {
  Alarm({this.source, this.time,this.details,this.ip,this.severity});
  final int severity;
  final String source;
  final  time;
  final String details;
  final  ip;
}

severityCheck (severity){
  switch (severity) {
    case 1:return Colors.red;
  }
  return Colors.green;
}
runCheck (severity){
  switch (severity) {
    case 1:return 'Off';
  }
  return 'UP';
}



class servers extends StatelessWidget  implements HasLayoutGroup{
  servers({Key key, this.layoutGroup, this.onLayoutToggle}) : super(key: key);
  final LayoutGroup layoutGroup;
  final VoidCallback onLayoutToggle;




  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(title: Text("Baghdad and North reagin IT Networks")),



      body: Container(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return ListView.builder(
        itemCount: allContacts.length,
        itemBuilder: (BuildContext content, int index) {
          Alarm alarm = allContacts[index];
          return ContactListTile(alarm);
        });
  }
}

class ContactListTile extends ListTile {
  ContactListTile(Alarm alarm)
      : super(
    title: Text(alarm.source),
    subtitle: Text(alarm.details),
    leading: CircleAvatar(child: Text(runCheck(alarm.severity).toString(),style: TextStyle(color: Colors.white),),backgroundColor: severityCheck(alarm.severity),),
    trailing:Column(children: <Widget>[Text(alarm.time),Text(alarm.ip)],),


  );
}

List<Alarm> allContacts = [


  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 2),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 1),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold  uuybfu kugyn j ytyv jy tf  utfvkfum  jyuktfvyjh d ki6tcjym i mvjg lt liiy fkvk ymhtfu6v5 hjtffvu  htrdc hyydv',time: "00:05:30", ip: "20.50.0.8",severity: 1),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 3),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 4),
  Alarm(source: 'VAS', details: 'the numbeybvcur of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 5),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 1),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 1),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 2),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 5),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 5),

  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 2),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 1),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold  uuybfu kugyn j ytyv jy tf  utfvkfum  jyuktfvyjh d ki6tcjym i mvjg lt liiy fkvk ymhtfu6v5 hjtffvu  htrdc hyydv',time: "00:05:30", ip: "20.50.0.8",severity: 1),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 3),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 4),
  Alarm(source: 'VAS', details: 'the numbeybvcur of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 5),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 1),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 1),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 2),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 5),
  Alarm(source: 'VAS', details: 'the number of file faield exceed threshold',time: "00:05:30", ip: "20.50.0.8",severity: 5),
];