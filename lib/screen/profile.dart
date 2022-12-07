import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC7BEA2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xFFC7BEA2),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    minRadius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/id/237/200/300'),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Richard',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PHONE NO :',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff837f76)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '+62 2567 573 7862',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                      width: 4,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'MAIL ID :',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff837f76)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'proriaty123@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                      width: 4,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'BIRTHDATE :',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff837f76)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'August 1st, 2002',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                      width: 4,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'ADDRESS :',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff837f76)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '1357 Blane Street Saint Louis',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                      width: 4,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
