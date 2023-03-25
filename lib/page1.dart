// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
//
// import 'Users.dart';
//
// class Api_Project extends StatelessWidget {
//   Api_Project({Key? key}) : super(key: key);
//
//   Future<dynamic> AddDetails() async {
//     String Url = "https://dummyapi.io/data/v1/user?limit=10 ";
//     var response = await post(Uri.parse(Url),
//         body: {
//           "name": name.text, "number": number.text});
//     print(response.body);
//     // return 'jghh';
//   }
//
//   final formkey = GlobalKey<FormState>();
//   var name = TextEditingController();
//
//   var addres = TextEditingController();
//   var number = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final double height = MediaQuery
//         .of(context)
//         .size
//         .height;
//     final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
//       backgroundColor: Color(0xFFffffff),
//       body: Container(
//         padding: EdgeInsets.only(left: 40, right: 40),
//         child: Form(
//           key: formkey,
//           child: SingleChildScrollView(
//             child:
//             Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               SizedBox(height: height * 0.03),
//               Text("Hello User Welcome ",
//                   style: TextStyle(fontSize: 30, color: Color(0xFF363f93))),
//               Text(
//                 "Please Enter Your Details",
//                 style: TextStyle(fontSize: 25, color: Color(0xFF363f93)),
//               ),b
//               SizedBox(
//                 height: height * 0.05,
//               ),
//               TextField(
//                 decoration: InputDecoration(labelText: "Enter User Name"),
//                 controller: name,
//               ),
//               SizedBox(
//                 height: height * 0.05,
//               ),
//               TextField(
//                 decoration: InputDecoration(labelText: " Enter Your Address"),
//                 controller: addres,
//               ),
//               SizedBox(
//                 height: height * 0.05,
//               ),
//               TextField(
//                 decoration: InputDecoration(labelText: " Emter Mobile Number"),
//                 controller: number,
//               ),
//               SizedBox(
//                 height: height * 0.05,
//               ),
//               Center(
//                 child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return Users_List();
//                           },
//                         ),
//                       );
//                     },
//                     child: Text("ok")),
//               ),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }
