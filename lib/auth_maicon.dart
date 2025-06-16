import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthMaicon with ChangeNotifier {

  String? _message = null;
  String? _token = null;

  final _url = "https://identitytoolkit.googleapis.com";
  final _resource = "/v1/accounts";
  final _apiKey = "AIzaSyAHmqHNQ2dTfiY2SGdJhrwPm5FXc_V4Rm8";

  Future<bool> signUp(String email, String password) async {
    String sUri = '$_url$_resource:signUp?key=$_apiKey';
    Uri uri = Uri.parse(sUri);

    http.Response response = await http.post(uri, body: {
        'email': email,
        'password': password,
        'returnSecureToken': 'true'
    });

    if (response.statusCode == 200) {
      // outras operações
      return true;
    } else {
      // outras operações
      return false;
    }
  }

  Future<bool> signIn(String email, String password) async {
    String sUri = '$_url$_resource:signInWithPassword?key=$_apiKey';
    Uri uri = Uri.parse(sUri);

    http.Response response = await http.post(uri, body: {
      'email': email,
      'password': password,
      'returnSecureToken': 'true'
    });

    if (response.statusCode == 200) {
      // outras operações
      return true;
    } else {
      // outras operações
      return false;
    }

  }

}