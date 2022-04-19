import 'package:firstpage/Utils/colors.dart';
import 'package:firstpage/loginpage.dart';
import 'package:firstpage/mainpage.dart';
import 'package:firstpage/registerpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(First());
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Main()
    );
  }
}
