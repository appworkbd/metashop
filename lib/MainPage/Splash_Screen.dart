import 'dart:async';

import 'package:flutter/material.dart';

import 'Welcome_page.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}



class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height/1,
              width: MediaQuery.of(context).size.width/4*3,
              child: Image.asset("image/metatransp.png"),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xfffcf6f1),
    );
  }
}
