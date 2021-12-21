import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:metashop/MainPage/Login_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 4*2,
                width: MediaQuery.of(context).size.width / 3*2,
                child: Image.asset("image/metatransp.png"/*"image/Metashop-awsome.png"*/),
              ),
            ),
            //SizedBox(height: MediaQuery.of(context).size.height/12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "It's good to",
                  style: TextStyle(
                      color: Color(0xfff63e3e),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text(
                    "See you",
                    style: TextStyle(
                        color: Color(0xff014879),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Center(
                child: Text(
              "We have a selection of the most",
              style: TextStyle(
                  color: Color(0xff1d0303), fontWeight: FontWeight.bold,),
            )),
            Center(
                child: Text(
                  "popular product",
                  style: TextStyle(
                    color: Color(0xff1d0303), fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 20,),
            Center(
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Color(
                    0xff030000 /*0xfff81b1b*/),),color: Color(0xfff5914d)),
                height: MediaQuery.of(context).size.height /14*1,
                width: MediaQuery.of(context).size.width / 5*2,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },child: Text("Go Shopping",style: TextStyle(color: Color(
                    0xfffdfeff /*0xff014879*/),fontWeight: FontWeight.bold,fontSize: 17),),),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/4,),

          ],
        ),
      ),
      backgroundColor: Color(0xfffcf6f1),
    );
  }
}
