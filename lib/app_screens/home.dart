import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Home",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: Container(
              alignment: Alignment.topLeft,
              color: Colors.amberAccent,
              child: Column(
                children: <Widget>[
                  Text(
                    "Trains",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none, fontSize: 40.0),
                  ),
                  Text(
                    "Bus",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none, fontSize: 40.0),
                  ),
                  SampleImage()
                ],
              )),
        ));
    return materialApp;
  }
}

class SampleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/sample_image.jpeg");
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
