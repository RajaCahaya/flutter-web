import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
// import 'package:admin/login/Homepage.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/main/components/side_menu.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Admin Panel',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: bgColor,
            canvasColor: secondaryColor,
          ),
          home: MainScreen(),
          routes: {
            // HomePage.routeName: (ctx) => HomePage(),
            SideMenu.routeName: (ctx) => SideMenu(),
            MainScreen.routeName: (ctx) => MainScreen(),
            DashboardScreen.routeName: (ctx) => DashboardScreen(),
          },
        );
  }
}
