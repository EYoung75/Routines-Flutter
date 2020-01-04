import "package:flutter/material.dart";
import "../widgets/customAppBar.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 100),
          color: Theme.of(context).primaryColor,
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.edit),
                label: Text("Edit"),
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: Icon(Icons.add),
                label: Text("Edit"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        elevation: 10,
        title: Text(
          "Horizons",
          style: Theme.of(context).textTheme.title,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.adjust),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Good Morning Evan!",
              style: Theme.of(context).textTheme.subtitle,
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              color: Colors.white,
              endIndent: 150,
              indent: 150,
            ),
            SizedBox(
              height: 15,
            ),
            Text("What would you like to do?"),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 150,
                  child: RaisedButton(
                    color: Color.fromRGBO(72, 165, 26, 1),
                    elevation: 7,
                    child: Text(
                      "Edit/Review",
                      style: Theme.of(context).textTheme.button,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    elevation: 7,
                    child: Text(
                      "Act",
                      style: Theme.of(context).textTheme.button,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/act");
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
