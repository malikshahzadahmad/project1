import 'package:firstpage/Utils/colors.dart';
import 'package:firstpage/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: CustomColors.appBackgroundColor,
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                "REGISTER",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 550,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 35),
                          child: TextField(
                              decoration: CustomColors.fieldDecoration(
                                  "FIRSTNAME",false, true,Icons.person)),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: CustomColors.inputPadding(),
                          child: TextField(
                              decoration: CustomColors.fieldDecoration(
                                  "LASTNAME",false, false,Icons.person)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: CustomColors.inputPadding(),
                    child: TextField(
                        decoration: CustomColors.fieldDecoration(
                            "EMAIL", false, true, Icons.email_outlined)),

                  ),
                  Padding(
                    padding: CustomColors.inputPadding(),
                    child: TextField(
                        decoration: CustomColors.fieldDecoration(
                            "CREATE PASSWORD",false,
                            true,
                            Icons.remove_red_eye_outlined)),
                  ),
                  Padding(
                    padding: CustomColors.inputPadding(),
                    child: TextField(
                        decoration: CustomColors.fieldDecoration(
                            "CONFIRM PASSWORD",false,
                            true,
                            Icons.remove_red_eye_outlined)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 250),

                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                    child: Text(
                      "LOGIN?",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
