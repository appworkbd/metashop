import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:metashop/Custom_page/Custom_Drawer.dart';
import 'package:metashop/Custom_page/Productlist.dart';
import 'package:metashop/MainPage/View_page.dart';

class Dashboard extends StatelessWidget {

var data= Productdata();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: custom_Drawer(),backgroundColor: Color(0xff0a3079),
      appBar: AppBar(
        backgroundColor: Color(0xff0a3079),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 20,top: 5,bottom: 10),
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.height/3,
                child: TextField(decoration: InputDecoration(
                  hintText: "Search",hintStyle: TextStyle(color: Colors.white),
                  //border: OutlineInputBorder(),



                ),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          ),

        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            //SizedBox(height: MediaQuery.of(context).size.height/30,),
            /*Row(children: [
              IconButton(onPressed: (){
              }, icon: Icon(Icons.view_list_outlined)),
              SizedBox(width: MediaQuery.of(context).size.width/40,),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: CircleAvatar(radius: 20,backgroundColor: Colors.deepOrange,child: Center(child: Icon(Icons.face_unlock_outlined),),),
              ),
              Text("Hi Soaib"),
              SizedBox(width: MediaQuery.of(context).size.width/3,),
              Icon(Icons.search),



            ],),*/
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text("Trending",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(
                    0xffffffff)),),
                  Text("Popular",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(
                      0xffffffff)),),
                  Text("Casual",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(
                      0xffffffff)),),

              ],),
            ),
            //SizedBox(height: MediaQuery.of(context).size.height/15,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: data.productlist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  childAspectRatio: .88,
                  crossAxisSpacing: 5),
                  itemBuilder:(BuildContext context,index){
                    return InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>viewPage(data.productlist[index])));
                    },child:
                      Card(
                        elevation: 15,
                        child: Container(
                          //height: MediaQuery.of(context).size.height/2,
                         // width: MediaQuery.of(context).size.width/2,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(150)),
                          child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/5,
                              width: MediaQuery.of(context).size.width/2,
                              child: Image.network(data.productlist[index].imageUrl),
                            ),
                            Text(data.productlist[index].title,style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff0a3079),fontSize: 18),),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,right: 5),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$${data.productlist[index].price.toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                                  Icon(Icons.thumb_up)
                                ],
                              ),
                            )
                          ],
                          ),
                        ),
                      ),);
                  },
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.deepPurple,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded,color: Colors.deepPurple,),label: "Order",),
            BottomNavigationBarItem(icon: Icon(Icons.thumb_up,color: Colors.deepPurple,),label: "Like"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle,color: Colors.deepPurple,),label: "Profile",backgroundColor: Colors.deepOrangeAccent),
          ],
      backgroundColor: Colors.white,),
    );
  }
}
