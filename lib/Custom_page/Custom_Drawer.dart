import 'package:flutter/material.dart';
class custom_Drawer extends StatelessWidget {
  const custom_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(decoration: BoxDecoration(color: Color(0xff0a3079)),
              child: Column(
                children: [
                  CircleAvatar(radius: 25,backgroundColor: Color(0xffffffff),child: Center(child: Icon(Icons.account_circle_outlined,color: Color(0xff0a3079),),),),
                  Container(
                      alignment: Alignment.topLeft, child: Text("Hi Soaib",style: TextStyle(color: Color(0xffffffff)))),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text("soaib@gmail.com",style: TextStyle(color: Color(0xffffffff)),))
                ],
              )),
          ListTile(
            title: Text("Home",style: TextStyle(color: Color(0xff0a3079)),),
            onTap: () {},
            leading: Icon(
              Icons.home,
              color: Color(0xff0a3079),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text("Order",style: TextStyle(color: Color(0xff0a3079)),),
            leading: Icon(
              Icons.shopping_cart_rounded,
              color: Color(0xff0a3079),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text("Profile",style: TextStyle(color: Color(0xff0a3079)),),
            leading: Icon(
                Icons.account_circle,
                color: Color(0xff0a3079)
            ),
            focusColor: Colors.cyanAccent,
          ),
          ListTile(
            onTap: () {},
            title: Text("About us",style: TextStyle(color: Color(0xff0a3079)),),
            leading: Icon(
                Icons.info,
                color: Color(0xff0a3079)
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text("Logout",style: TextStyle(color: Color(0xff0a3079)),),
            leading: Icon(
                Icons.logout,
                color: Color(0xff0a3079)
            ),
          ),
        ],
      ),
    );
  }
}
