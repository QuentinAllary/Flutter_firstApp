import 'package:flutter/material.dart';
import 'package:epicture/views/LoginPage.dart';

void main() => runApp(Epicture());

class Epicture extends StatelessWidget {

  Epicture() {
    SharedPreferences.setMockInitialValues({});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Epicture',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.white))),
      home: LoginPage(),
    );
  }
}
