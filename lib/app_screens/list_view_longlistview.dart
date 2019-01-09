import 'package:flutter/material.dart';

class LongListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring UI widgets",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Long ListView"),
        ),
        body: getListItems(context),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint("FAB is clicked");
          },
          child: Icon(Icons.add),
          tooltip: "Add Item",  //Long press
        ),
      ),
    );
    return materialApp;
  }
}

List<String> getListElement(){
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

void showSnackbar(BuildContext context, String message){
  var snackbar = SnackBar(
      content: Text(message),
      action: SnackBarAction(label: "OK", onPressed: (){
        debugPrint("OK Button is clicked !!");
    }),
  );
  Scaffold.of(context).showSnackBar(snackbar);
}


Widget getListItems(BuildContext context) {
  var listItems = getListElement();
  var listView = ListView.builder(itemBuilder: (context, index){
    return ListTile(
      leading: Icon(Icons.account_circle),
      title: Text(listItems[index],),
      onTap: (){
        debugPrint("${listItems[index]} is clicked !!");
        showSnackbar(context, "${listItems[index]} is clicked !!");
      },
    );
  });
  return listView;
}
