import 'package:flutter/material.dart';

//void main() => runApp(MyFirstScreen());
//void main() => runApp(Home());
//void main() => runApp(ListViewBasic());
//void main() => runApp(LongListViewDemo());

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "StateFul App Example",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String cityName = "";
  var _currencies = ['Rupees', 'Dollar', 'Pounds', 'Others'];
  var _currentItemSelected = 'Rupees';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFul App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput) {
                setState(() {
                  cityName = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropDownItem) {
                return DropdownMenuItem<String>(
                  value: dropDownItem,
                  child: Text(dropDownItem),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this._currentItemSelected = newValueSelected;
                });
              },

              value: _currentItemSelected,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Your city name is $cityName",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
