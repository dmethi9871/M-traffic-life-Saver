import 'dart:ui';

import 'package:application2_app/utils/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// import 'pages/home.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = "";
  bool onChangebutton = false;
  final _formkey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async {
    if(_formkey.currentState!.validate()){
    setState(() {
      onChangebutton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyROutes.HomeROute);
    setState(() {
      onChangebutton = false;
    });
  }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "images1/images/hey.png",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                // font:GoogleFonts.abrilFatface()
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return null;
                          }

                          return "Enter Username";
                        },


                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return null;


                          return "enter password"  ;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        child: InkWell(
                          splashColor: Colors.red,
                          onTap: () => movetoHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: onChangebutton ? 150 : 50,

                            // color: Colors.blue,
                            alignment: Alignment.center,
                            child: Text("Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    onChangebutton ? 20 : 8),
                                color: Colors.blue),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //   child: Text("login"),
                      //   style: TextButton.styleFrom(),
                      //   onPressed: () {
                      //     print("hello world");
                      //   },
                      // )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));

    // child: Center(child: Text("Loginpage",
    // style: TextStyle(fontSize: 20,
    //  color: Colors.blue,
    //   fontWeight: FontWeight.bold),)),
  }
}
