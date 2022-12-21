// //Login Page
// import 'package:admin/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:admin/login/constants.dart';
// import 'package:admin/login/login.dart';
// import 'package:admin/login/signup.dart';
// import 'package:provider/provider.dart';

// class HomePage extends StatefulWidget {
//   static const String routeName = 'homepage';

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   Option selectedOption = Option.LogIn;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     print(size.height);
//     print(size.width);

//     return Scaffold(
//       body: Container(
//         width: size.width,
//         height: size.height,
//         child: Stack(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   height: double.infinity,
//                   width: size.width / 2,
//                   color: primaryColor,
//                 ),
//               ],
//             ),
//             Align(
//               alignment: Alignment.topLeft,
//               child: Padding(
//                 padding: EdgeInsets.all(32),
//                 child: Text(
//                   "Welcome",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Padding(
//                 padding: EdgeInsets.all(32),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Please login into your account",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       "to login to our admin panel",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 14,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.topRight,
//               child: Padding(
//                   padding: EdgeInsets.all(32),
//                   child: Image.asset("assets/images/blue.png")),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Padding(
//                 padding: EdgeInsets.all(32),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Icon(
//                       Icons.copyright,
//                       color: Colors.grey,
//                       size: 24,
//                     ),
//                     SizedBox(
//                       width: 8,
//                     ),
//                     Text(
//                       "Bluevinegar 2022",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 14,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             AnimatedSwitcher(
//               duration: Duration(milliseconds: 500),
//               transitionBuilder: (widget, animation) =>
//                   ScaleTransition(child: widget, scale: animation),

//               child: selectedOption == Option.LogIn
//                   ? LogIn(
//                       onSignUpSelected: () {
//                         setState(() {
//                           selectedOption = Option.SignUp;
//                         });
//                       },
//                     )
//                   : SignUp(
//                       onLogInSelected: () {
//                         setState(() {
//                           selectedOption = Option.LogIn;
//                         });
//                       },
//                     ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
