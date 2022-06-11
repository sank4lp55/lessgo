import 'package:flutter/material.dart';
import 'package:lessgo/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
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
                  "Welcome $name",
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
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
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
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    alignment: Alignment.center,
                    width: changeButton ? 37 : 110,
                    height: 37,
                    // color: Color.fromRGBO(108, 100, 251, 0.95),
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(108, 100, 251, 0.95),
                        // shape:
                        //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 18.5 : 8)),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: Text(
                //     "Login",
                //     style: TextStyle(fontSize: 18),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //       primary: Color.fromRGBO(108, 100, 251, 0.95),
                //       minimumSize: Size(110, 40)),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
