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
                  Row(
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
                    ],
                  ),
                  SampleImage(),
                  BookingButton()
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
    Image image = Image(
      image: assetImage,
      width: 300.0,
      height: 300.0,
    );
    return Container(
      child: image,
    );
  }
}

class BookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container container = Container(
      width: 300.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.lightBlue,
          child: Text(
            "Book Ticket",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          elevation: 6.0,
          onPressed: () {
            showSuccessDialog(context);
          }),
    );

    return container;
  }
}

void showSuccessDialog(BuildContext context) {
  AlertDialog alertDialog = AlertDialog(
    title: Text("Success!!"),
    content: Text("Your have successfully booked ticket"),
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
