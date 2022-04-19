import 'package:flutter/material.dart';

class CustomColors {
  static const appBackgroundColor = Color(0xFFFDFEFE);

  static InputDecoration fieldDecoration(
      String hint, bool prefix, bool suficon, IconData icon) {
    return InputDecoration(

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
        hintText: hint,
        //fillColor: Colors.grey,filled: true,
        prefixIcon: prefix
            ? Icon(
                icon,
                color: Colors.white,
              )
            : SizedBox(),
        suffixIcon: suficon
            ? Icon(
                icon,
                color: Colors.white,
              )
            : SizedBox(),
        prefixIconColor: Colors.white,
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        hintStyle: TextStyle(color: Colors.white, fontSize: 20));
  }

  static EdgeInsets inputPadding() {
    return EdgeInsets.only(left: 20, right: 20, top: 35);
  }
}
