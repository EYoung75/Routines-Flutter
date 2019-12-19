import "package:flutter/material.dart";
import "./screens/LandingScreen.dart";

void main() async {
  runApp(Routines());
}

class Routines extends StatefulWidget {
  @override
  _RoutinesState createState() => _RoutinesState();
}

class _RoutinesState extends State<Routines> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(19, 89, 117, 1),
        accentColor: Color.fromRGBO(221, 51, 42, 1),
        fontFamily: "BenchNine",
        textTheme: TextTheme(
          title: TextStyle(fontSize: 30, color: Colors.white),
          subtitle: TextStyle(fontSize: 30, color: Colors.white),
          body1: TextStyle(fontSize: 24, color: Colors.white),
          button: TextStyle(fontSize: 24, color: Colors.white)
        ),
      ),
      home: LandingScreen(),
    );
  }
}
