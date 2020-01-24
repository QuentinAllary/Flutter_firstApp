import 'package:flutter/material.dart';
import 'package:app_epicture/tabs/first.dart';
import 'package:app_epicture/tabs/second.dart';
import 'package:app_epicture/tabs/third.dart';
import 'package:app_epicture/tabs/fourth.dart';
import 'package:app_epicture/tabs/fifth.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Using Tabs",
      // Home
      home: MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Using Bottom Navigation Bar"),
        // Set the background color of the App Bar
        backgroundColor: Colors.blue,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[FirstTab(), SecondTab(), ThirdTab(), FourthTab(), FifthTab()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.blue,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
            Tab(
              icon: Icon(Icons.add_circle_outline),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.person_outline),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}