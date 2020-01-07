import "dart:async";
import "dart:convert";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class Auth with ChangeNotifier {
  String _token;
  String _userId;
  String email;

  Future<void> _authenticate(String email, String password, String url) async {
    
  }
}