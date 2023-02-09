import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/signup.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.15,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/profile1.png"),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
               Container(
                width: w,
                margin: EdgeInsets.only(left: 20),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight:FontWeight.bold,
                      color: Colors.black54

                    ),
                  ),
          
                    Text(
                    "example@gmail.com",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[500]

                    ),
                  ),
                  ],
                 ),
               )
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage("assets/images/loginbtn.png"),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Text(
                "Sign out",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: w * 0.10,
          ),
          
       
        ],
      ),
    );
  }
}