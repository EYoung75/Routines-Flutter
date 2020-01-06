import "package:flutter/material.dart";

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  String _name;

  // saveName() {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ));
  // }

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
              "Welcome to Horizons! First things first, what's your name?",
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
              decoration:
                  InputDecoration(hintText: "My name is...", hintMaxLines: 32),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: InkWell(
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 40,
                ),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
