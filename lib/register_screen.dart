import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    200,
                  ),
                  bottomRight: Radius.circular(200)),
              color: Colors.orangeAccent.shade400,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.deepOrange.withOpacity(.3),
                  offset: Offset(5, 5), // Change to a finite value
                  spreadRadius: 5.0,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Register",
              style: TextStyle(
                color: Colors.orange.shade50,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              "Create your account",
              style: TextStyle(
                color: Colors.orange.shade50,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              cursorHeight: Checkbox.width,
              cursorColor: Colors.deepOrange,
              showCursor: true,
              //maxLength: 12,
              scribbleEnabled: true,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      )),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange.shade900,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                        width: 1,
                      )),
                  focusColor: Colors.orangeAccent,
                  fillColor: Colors.orange.shade200,
                  hintText: "username"),
              style: TextStyle(color: Colors.deepOrangeAccent.shade700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              cursorHeight: Checkbox.width,
              cursorColor: Colors.deepOrange,
              showCursor: true,
              //maxLength: 12,
              scribbleEnabled: true,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      )),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange.shade900,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                        width: 1,
                      )),
                  focusColor: Colors.orangeAccent,
                  fillColor: Colors.orange.shade200,
                  hintText: "password"),
              style: TextStyle(color: Colors.deepOrangeAccent.shade700),
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepOrangeAccent),
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.orange.shade100,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
