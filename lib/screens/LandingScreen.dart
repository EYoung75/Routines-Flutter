import "package:flutter/material.dart";
import 'package:routines/screens/LoginScreen.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 100),
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.help,
              size: 80,
              color: Colors.white,
            ),
            Text(
              "Welcome to Horizons",
              style: Theme.of(context).textTheme.title,
            ),
            Text(
              "Your new routine and goal tracking companion",
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, .6),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/create");
              },
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 250,
                child: Text("Get Started"),
              ),
              elevation: 7,
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => LoginScreen(),
                    fullscreenDialog: true,
                  ),
                );
              },
              child: Text(
                "I already have an account",
                style: Theme.of(context).textTheme.body1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
