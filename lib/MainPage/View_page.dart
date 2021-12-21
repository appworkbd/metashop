import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:metashop/Custom_page/Model_class.dart';
class viewPage extends StatelessWidget {

  late final productlistmodel productDetails;
  viewPage(this.productDetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width,
            height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Icon(Icons.thumb_up_alt_outlined)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Image.network(productDetails.imageUrl),
              ),
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(productDetails.title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
            ],),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xffb6bccb)),
                    height: 50,width: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("-",style:
                        TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff0a3079)),),
                        Text("0",style:
                        TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff0a3079)),),
                        Text("+",style:
                        TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff0a3079)),),
                      ],),
                    ),
                  ),),
                  Text(productDetails.price.toString())
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
