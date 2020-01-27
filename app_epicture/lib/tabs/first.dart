import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // // Appbar
      // appBar: AppBar(
      //   // Title
      //   title: Text("Using Bottom Navigation Bar"),
      //   // Set the background color of the App Bar
      //   backgroundColor: Color(0xFF34373C),
      // ),
      backgroundColor: Color(0xFF000000),
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.home,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                "First Tab",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}