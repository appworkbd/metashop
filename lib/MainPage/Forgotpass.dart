import 'package:flutter/material.dart';
class Forgotpass extends StatelessWidget {
  const Forgotpass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/15,),

            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 50),
                    child: Text(
                      "Welcome,",
                      style: TextStyle(
                          color: Color(0xff0a3079),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 2),
                    child: Text(
                      "Sign in to continue,",
                      style: TextStyle(
                          color: Color(0xfff1944a), fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height/16*1,
                width: MediaQuery.of(context).size.width/6*5 ,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xfff1944a),width: 2),borderRadius: BorderRadius.circular(40)),
                   focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide(color: Color(
                      0xff0a3079),width: 2)),
                    labelText: "User name",
                    labelStyle: TextStyle(color: Color(0xfff1944a)),
                     border: OutlineInputBorder()
                  ),
                ),
              ),
            ),

            //SizedBox(height: MediaQuery.of(context).size.height/40,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height/16*1,
                width: MediaQuery.of(context).size.width/6*5 ,
                child: TextField(

                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xfff1944a),width: 2),borderRadius: BorderRadius.circular(40)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide(color: Color(
                          0xff0a3079),width: 2)),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Color(0xfff1944a)),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
                  ),

                ),
              ),
            ),

            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
