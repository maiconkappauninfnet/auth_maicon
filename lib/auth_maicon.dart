import 'dart:convert';

import 'package:flutter/material.dart';

/// A Calculator.
class AuthMaicon with ChangeNotifier {
  String? message;
  String? token;

  final _url = "https://identitytoolkit.googleapis.com";
  final _resource = "/v1/accounts";
  final _apiKey = "AIzaSyAHmqHNQ2dTfiY2SGdJhrwPm5FXc_V4Rm8";

  void signUp() {}

  void signIn() {}
}
