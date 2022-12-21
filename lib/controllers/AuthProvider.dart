// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// class AuthProvider extends ChangeNotifier {
//   static String? _token;

//   bool get isAuth {
//     return _token != null;
//   }



// class TokenStorage {
//   Future<bool> setToken(String _token) async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.setString('access_token',_token);
//   }

//   Future<String> getToken() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getString('access_token') ?? '';
//   }
// }
