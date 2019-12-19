import "package:flutter/material.dart";
import "../widgets/customAppBar.dart";

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        
        elevation: 10,
        title: Text("Routines", style: Theme.of(context).textTheme.title,),
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
                    onPressed: () {},
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
