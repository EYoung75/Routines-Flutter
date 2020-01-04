import "package:flutter/material.dart";

class CreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to Horizons! First, let's get to know you a little bit better:",
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration:
                  InputDecoration(hintText: "My name is...", hintMaxLines: 32),
            )
          ],
        ),
      ),
    );
  }
}
