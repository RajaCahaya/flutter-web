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

//   Future<bool> SignIn(String email, String password) async {
//     bool successLogin = false;
//     final url = Uri.parse('http://18.141.132.160/auth/token');

//     try {
//       // call auth with the provided email & password
//       print("AuthProvider.SignIn() : Calling API : " + url.toString());
//       String body = '''{
//         "username": "$email",
//         "password": "$password"
//       }''';

//       final response =
//           await http.post(url, headers: <String, String>{"Content-Type": "application/json", "Access-Control-Allow-Origin": "*"}, body: body);

//       print("response:" + "${response.statusCode}");
//       final responseData = json.decode(response.body);

//       // if received error, throw it
//       if (responseData != null) {
//         print("token:" + responseData.toString());

//         // // save idToken to local storage
//         var _token = responseData['access_token'];
//         final prefs = await SharedPreferences.getInstance();
//         prefs.setString('access_token', _token);
//         TokenStorage().setToken(_token);
//         notifyListeners(); // update the other screen to get updated
//         successLogin = true;
//       } else {
//         throw HttpException(responseData['error']['message']);
//       }
//     } catch (error) {
//       print(error);
//     } finally {
//       return successLogin;
//     }
//   }
// }

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
