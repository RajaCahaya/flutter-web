// import 'package:admin/constants.dart';
// import 'package:admin/controllers/MenuController.dart';
// import 'package:admin/login/Homepage.dart';
// import 'package:admin/screens/dashboard/dashboard_screen.dart';
// import 'package:admin/screens/main/main_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:admin/login/constants.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:admin/controllers/AuthProvider.dart';

// class LogIn extends StatefulWidget {
//    final Function onSignUpSelected;
//    LogIn({required this.onSignUpSelected});



//   @override
//   _LogInState createState() => _LogInState();
// }

// final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
//   onPrimary: Colors.white,
//   primary: primaryColor,
//   minimumSize: Size(100, 60),
//   padding: EdgeInsets.symmetric(horizontal: 16),
//   shape: const RoundedRectangleBorder(
//     borderRadius: BorderRadius.all(Radius.circular(20)),
//   ),
// );

// class _LogInState extends State<LogIn> {
//   TextEditingController Email = TextEditingController();
//   TextEditingController Pass = TextEditingController();
//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     Email.dispose();
//     Pass.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final prod = Provider.of<AuthProvider>(context);
//     Size size = MediaQuery.of(context).size;
//     return Padding(
//       padding: EdgeInsets.all(size.height > 770
//           ? 64
//           : size.height > 670
//               ? 32
//               : 16),
//       child: Center(
//         child: Card(
//           elevation: 4,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(25),
//             ),
//           ),
//           child: AnimatedContainer(
//             duration: Duration(milliseconds: 200),
//             height: size.height *
//                 (size.height > 770
//                     ? 0.7
//                     : size.height > 670
//                         ? 0.8
//                         : 0.9),
//             width: 500,
//             color: bgColor,
//             child: Center(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: EdgeInsets.all(40),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "LOG IN",
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Container(
//                         width: 30,
//                         child: Divider(
//                           color: primaryColor,
//                           thickness: 2,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 32,
//                       ),
//                       TextField(
//                         controller: Email,
//                         decoration: InputDecoration(
//                           hintText: 'Email',
//                           labelText: 'Email',
//                           suffixIcon: Icon(
//                             Icons.mail_outline,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 32,
//                       ),
//                       TextField(
//                         controller: Pass,
//                         decoration: InputDecoration(
//                           hintText: 'Password',
//                           labelText: 'Password',
//                           suffixIcon: Icon(
//                             Icons.lock_outline,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 64,
//                       ),
//                       ElevatedButton(
//                         style: raisedButtonStyle,
//                         onPressed: () async {
//                           bool isLogin = await Provider.of<AuthProvider>(context, listen: false).SignIn("bluevinegar", "kLMBD4GARf12ThvdWRUn5IjzuXNbF8jav2nXU9ypej");
//                           if (isLogin){
//                             Get.to(MainScreen());
//                           }
//                         },
//                         child: Text('Login'),
//                       ),
//                       SizedBox(
//                         height: 32,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "You do not have an account?",
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 14,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 8,
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               widget.onSignUpSelected();
//                             },
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "More info",
//                                   style: TextStyle(
//                                     color: primaryColor,
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 8,
//                                 ),
//                                 Icon(
//                                   Icons.arrow_forward,
//                                   color: primaryColor,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
