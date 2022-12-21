// import 'package:admin/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:admin/login/constants.dart';


// class SignUp extends StatefulWidget {

//   final Function onLogInSelected;

//   SignUp({required this.onLogInSelected});

//   @override
//   _SignUpState createState() => _SignUpState();
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

// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {

//     Size size = MediaQuery.of(context).size;
    
//     return Padding(
//       padding: EdgeInsets.all(size.height > 770 ? 64 : size.height > 670 ? 32 : 16),
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
//             height: size.height * (size.height > 770 ? 0.7 : size.height > 670 ? 0.8 : 0.9),
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
//                         "Information",
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



//                       // SizedBox(
//                       //   height: 32,
//                       // ),

//                       Text(
//                         "To gain access to the panel the user must contact the admin for manual account activation.",
//                         style: TextStyle(

//                           fontSize: 18,
//                           color: Colors.white,
//                         ),
//                       ),

//                       SizedBox(
//                         height: 32,
//                       ),

//                       Text(
//                         "and the admin will email the following account details.",
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                         ),
//                       ),

//                       SizedBox(
//                         height: 64,
//                       ),


//                       // ElevatedButton(
//                       //   style: raisedButtonStyle,
//                       //   onPressed: () { },
//                       //   child: Text('Create Account'),
//                       // ),
//                       // actionButton("Create Account"),

//                       SizedBox(
//                         height: 32,
//                       ),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [

//                           Text(
//                             "Already have an account?",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                             ),
//                           ),

//                           SizedBox(
//                             width: 8,
//                           ),

//                           GestureDetector(
//                             onTap: () {
//                               widget.onLogInSelected();
//                             },
//                             child: Row(
//                               children: [

//                                 Text(
//                                   "Log In",
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