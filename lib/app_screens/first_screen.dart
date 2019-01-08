import 'package:flutter/material.dart';
class MyFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter App",
        home: Scaffold(
          appBar: AppBar(
            title: Text("First Screen"), // toolbar title
          ),
          body: Material(
            color: Colors.lightBlueAccent,
            child: Center(
              child: Text(
                "Hello World in Flutter",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
        ));
    return materialApp;
  }
}
