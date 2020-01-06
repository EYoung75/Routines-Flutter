import "package:flutter/material.dart";
import 'package:routines/screens/ActScreen.dart';
import "./screens/LandingScreen.dart";
import "./screens/CreateScreen.dart";
import "./screens/LoginScreen.dart";
import "package:flutter/services.dart";

void main() async {
  runApp(Routines());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
          title: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
          subtitle: TextStyle(fontSize: 30, color: Colors.white),
          body1: TextStyle(fontSize: 24, color: Colors.white),
          button: TextStyle(fontSize: 24, color: Colors.white),
          display1: TextStyle(fontSize: 24, color: Colors.white),
          overline: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      home: LandingScreen(),
      routes: {
        "/login": (ctx) => LoginScreen(),
        "/create": (ctx) => CreateScreen(),
        "/act": (ctx) => ActScreen(),
      },
    );
  }
}
