import 'package:flutter/material.dart';
import 'package:lessgo/utils/routes.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  "assets/images/undraw_Mobile_login_re_9ntv.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter name"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Enter password"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(108, 100, 251, 0.95),
                      minimumSize: Size(110, 40)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
