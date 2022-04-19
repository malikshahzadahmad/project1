import 'package:firstpage/loginpage.dart';
import 'package:firstpage/registerpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utils/colors.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: CustomColors.appBackgroundColor,
      body: ListView(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Text(
              "WELCOME",
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: SizedBox(
                        height: 60,
                        width: 350,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 40,
                                )
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SizedBox(
                        height: 60,
                        width: 350,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Register()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "REGISTER",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 40,
                                )
                              ],
                            )),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
