// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Account extends StatelessWidget {
//   const Account({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0XFF000000),
//       body: SafeArea (
//         child: Center(
//           child: Column(
//             children: [
//               SizedBox(height: 50),
//               Container(
//                 width: 200,
//                 child: Image.network('https://i.postimg.cc/FFfcWV0v/squadron.png'),
//               ),
//               SizedBox(height: 50),
//               Text(
//                 "Name App", 
//                 style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)
//               ),
//               SizedBox(height: 4),
//               Text(
//                 "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
//                 textAlign: TextAlign.center, 
//                 style: TextStyle(color: Colors.white)
//               ),
//               SizedBox(height: 80),
//               Container(
//                 width: 180,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: () {
//                   }, 
//                   child: Text("SIGN IN"),
//                   style: ElevatedButton.styleFrom(
//                     primary: Color(0XFF9A9483),
//                     shape: StadiumBorder()
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 width: 180,
//                 height: 50,
//                  decoration: BoxDecoration(
//                   border: Border.all(color: Color(0XFF9A9483)),
//                   borderRadius: BorderRadius.circular(30)
//                 ),
//                 child: ElevatedButton(
//                   onPressed: () {
//                   }, 
//                   child: Text("SIGN UP"),
//                   style: ElevatedButton.styleFrom(
//                     primary: Color(0XFF000000),
//                     shape: StadiumBorder()
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }