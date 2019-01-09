import 'package:flutter/material.dart';

class ListViewBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List Items",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Items"),
        ),
        body: getListItems(context),
      ),
    );
    return materialApp;
  }
}

Widget getListItems(BuildContext context) {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.airplanemode_active),
        title: Text("Flights"),
        subtitle: Text("From Delhi to Patna"),
        trailing: Icon(Icons.access_time),
        onTap: () {
          debugPrint("Flights");
        },
      ),
      Text(
        "List Item Text",
        style: TextStyle(fontSize: 20.0),
      ),
      Container(
        color: Colors.deepPurple,
        height: 40.0,
      )
    ],
  );
  return listView;
}
