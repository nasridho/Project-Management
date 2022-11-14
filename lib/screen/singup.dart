import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF000000),
      body: SafeArea (
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  width: 200,
                  child: Image.network('https://i.postimg.cc/X7csJxwR/logosec.png'),
                ),
                SizedBox(height: 10),
                Text(
                  "Sign Up", 
                  style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)
                ),
                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0XFF9A9483))
                  ),
                  child: TextField(
                    style: TextStyle(color: Color(0XFF9A9483)),
                    decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Color(0XFF9A9483)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0XFF9A9483))
                  ),
                  child: TextField(
                    style: TextStyle(color: Color(0XFF9A9483)),
                    decoration: InputDecoration(
                      hintText: "E-mail Address",
                      hintStyle: TextStyle(color: Color(0XFF9A9483)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0XFF9A9483))
                  ),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Color(0XFF9A9483)),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0XFF9A9483)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0XFF9A9483))
                  ),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Color(0XFF9A9483)),
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(color: Color(0XFF9A9483)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                
                SizedBox(height: 30),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                    }, 
                    child: Text("SIGN UP"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0XFF9A9483),
                      shape: StadiumBorder()
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}