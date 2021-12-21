import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:metashop/MainPage/Login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
  TextEditingController unameController = TextEditingController();

  TextEditingController passController = TextEditingController();

  TextEditingController mailController = TextEditingController();

  String? username;
  String? pass;
  String? mail;

  setSharedPreference() async {
    final pref = await SharedPreferences.getInstance();

    pref.setString("username", unameController.text);
    pref.setString("pass", passController.text);
    pref.setString("mail", mailController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 60),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          color: Color(0xff0a3079),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 2),
                    child: Text(
                      "Signup get to started",
                      style: TextStyle(
                          color: Color(0xfff1944a),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 16 * 1,
              width: MediaQuery.of(context).size.width / 6 * 5,
              child: TextField(
                controller: unameController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfff1944a)),
                      borderRadius: BorderRadius.circular(40)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Color(0xff0a3079))),
                  labelText: "User Name",
                  labelStyle: TextStyle(color: Color(0xfff1944a)),
                  // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xfff1944a)),borderRadius: BorderRadius.circular(40))
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: MediaQuery.of(context).size.height / 16 * 1,
              width: MediaQuery.of(context).size.width / 6 * 5,
              child: TextField(
                controller: mailController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff1944a)),
                        borderRadius: BorderRadius.circular(40)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Color(0xff0a3079))),
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Color(0xfff1944a)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff1944a)),
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: MediaQuery.of(context).size.height / 16 * 1,
              width: MediaQuery.of(context).size.width / 6 * 5,
              child: TextField(
                controller: passController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff1944a)),
                        borderRadius: BorderRadius.circular(40)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Color(0xff0a3079))),
                    labelText: "Create Password",
                    labelStyle: TextStyle(color: Color(0xfff1944a)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff1944a)),
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 16 * 1,
                width: MediaQuery.of(context).size.width / 6 * 5,
                decoration: BoxDecoration(
                    color: Color(0xfff1944a),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: TextButton(
                  onPressed: () {
                    if (unameController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please fill User Name",
                          toastLength: Toast.LENGTH_LONG);
                    } else if (passController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please fill Password",
                          toastLength: Toast.LENGTH_LONG);
                    } else if (mailController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please fill E-mail",
                          toastLength: Toast.LENGTH_LONG,
                          backgroundColor: Colors.black,
                          gravity: ToastGravity.SNACKBAR);
                    } else {
                      setSharedPreference();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                      Fluttertoast.showToast(msg: "Signup Successful");
                    }
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)),
                  ),
                ))),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffb6bccb),
                  borderRadius: BorderRadius.circular(40)),
              height: MediaQuery.of(context).size.height / 16 * 1,
              width: MediaQuery.of(context).size.width / 6 * 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Color(0xff0a3079),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Connect With facebook",
                    style: TextStyle(
                        color: Color(0xff0a3079), fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffb6bccb),
                  borderRadius: BorderRadius.circular(40)),
              height: MediaQuery.of(context).size.height / 16 * 1,
              width: MediaQuery.of(context).size.width / 6 * 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mail,
                    color: Color(0xff0a3079),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Connect With Google",
                    style: TextStyle(
                        color: Color(0xff0a3079), fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I am already a member",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xfff1944a /*0xff0a3079*/)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text("Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(/*0xfff1944a*/ 0xff0a3079))))
              ],
            )
          ],
        ),
      ),
    );
  }
}
