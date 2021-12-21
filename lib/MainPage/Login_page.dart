import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:metashop/MainPage/Dashboard.dart';
import 'package:metashop/MainPage/Forgotpass.dart';
import 'package:metashop/MainPage/Sign_Up.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String Username= "";
  String password = "";

  TextEditingController unController = TextEditingController();
  TextEditingController pwController = TextEditingController();


  getShapref() async {
    final pref= await SharedPreferences.getInstance();

    setState(() {
      Username = pref.getString("username")!;
      password = pref.getString("pass")!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getShapref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          ///Text('Shoib : $Username  : $unController  \n $password  : $pwController'),

          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 100),
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
          Container(
             height: MediaQuery.of(context).size.height/16*1,
          width: MediaQuery.of(context).size.width/6*5 ,
            child: TextField(
              controller: unController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(5),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xfff1944a)),borderRadius: BorderRadius.circular(40)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide(color: Color(
                    0xff0a3079))),
                  labelText: "User name",
                  labelStyle: TextStyle(color: Color(0xfff1944a)),
                 // border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xfff1944a)),borderRadius: BorderRadius.circular(40))
                  ),

              ),
            ),
          SizedBox(height: 15,),
          Container(
            height: MediaQuery.of(context).size.height/16*1,
            width: MediaQuery.of(context).size.width/6*5 ,
            child: TextField(
              controller: pwController,
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xfff1944a)),borderRadius: BorderRadius.circular(40)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide(color: Color(
                      0xff0a3079))),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color(0xfff1944a)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xfff1944a)),borderRadius: BorderRadius.circular(40))
              ),

            ),
          ),
          SizedBox(height: 5,),

          Container(alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 35),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgotpass()));
                },child: Text("Forgot Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xff0a3079)),),)
              )),
          SizedBox(height: 25,),
          Container(
              height: MediaQuery.of(context).size.height/16*1,
              width: MediaQuery.of(context).size.width/6*5 ,
              decoration: BoxDecoration(color: Color(0xfff1944a),borderRadius: BorderRadius.circular(40)),
              child: Center(child: InkWell(
                onTap: (){
                  if(unController.text.isEmpty && pwController.text.isEmpty){
                    Fluttertoast.showToast(msg: "Please give user name & password");
                  }else if(Username==unController.text && password==pwController.text){
                   Fluttertoast.showToast(msg: "Login Successful",toastLength: Toast.LENGTH_LONG);
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
    }else{Fluttertoast.showToast(msg: "Please try with valid information");}
                  },
                child: Text("Login",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(
                    0xffffffff)),),
              ))),
          SizedBox(height: 10),
         Container(
           decoration: BoxDecoration(color: Color(0xffb6bccb),borderRadius: BorderRadius.circular(40)),
           height: MediaQuery.of(context).size.height/16*1,
           width: MediaQuery.of(context).size.width/6*5,
           child: Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.facebook,color: Color(0xff0a3079),),
               SizedBox(width: 10,),
               Text("Connect With facebook",style: TextStyle(color: Color(
                   0xff0a3079),fontWeight: FontWeight.bold),)
             ],
           ),
         ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(color: Color(0xffb6bccb),borderRadius: BorderRadius.circular(40)),
            height: MediaQuery.of(context).size.height/16*1,
            width: MediaQuery.of(context).size.width/6*5,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mail,color: Color(0xff0a3079),),
                SizedBox(width: 10,),
                Text("Connect With Google",style: TextStyle(color: Color(
                    0xff0a3079),fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(height: 40),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("I am new user",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xfff1944a/*0xff0a3079*/)),),
              TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));}, child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,color: Color(/*0xfff1944a*/0xff0a3079))))
            ],
          )
        ],
      ),
      backgroundColor: Color(0xfffcf6f1),
    );
  }
}
