import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'notification.dart';
class productdetails extends StatelessWidget {
  const productdetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: IconButton(onPressed: (){showAlertDialog(context);},
              icon: Icon(Icons.notifications_none,color: Colors.white,),
            ),
            )],
             title:  Padding(padding: EdgeInsets.only(top: 30.0,left: 20),
             child: Text("nftApp",style: TextStyle(color: Colors.white))),
             systemOverlayStyle: const SystemUiOverlayStyle(
             statusBarColor: CupertinoColors.systemBlue,),
             backgroundColor: CupertinoColors.systemBlue,elevation: 0),
             backgroundColor:CupertinoColors.systemGrey6,
             body:Column(
             children: [
             Stack(
              children: [
              SizedBox(
             height: 390,
             width: 400,
             child: Container(
             decoration:const BoxDecoration( color: Colors.white,
             borderRadius: BorderRadius.all(Radius.circular(50)),
             boxShadow: [
             BoxShadow(offset: Offset(0, 1),color: Colors.black38,
             blurRadius: 10,),
            ]),
         ),
    ),
             Positioned(
             child: ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50,),
             bottomRight: Radius.circular(50),),
             child: Container(
             color: CupertinoColors.systemBlue,
             height: 190,
             width: 400,)),),

            Padding(
             padding: const EdgeInsets.only(left: 138,top: 140),
             child: Container(
             decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage("assets/images/me1.jpg")),
                 borderRadius: BorderRadius.circular(400),
                 border: Border.all(width: 2.5,color: CupertinoColors.white)),
                 height: 90,
                 width: 90)),

               const Padding(
                  padding: const EdgeInsets.only(top: 235,left: 158),
                  child: Text("imjack",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),),
                Container(margin: EdgeInsets.only(top: 255,left: 145),
                  height: 13,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient:const LinearGradient(begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [ Colors.cyanAccent,
                    Colors.cyan])),
                 child: Text(textAlign:TextAlign.center,"#1 Seller",style: TextStyle(fontSize: 11,color: Colors.black,),),),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                      Text("120K",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                    Text("120K",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                      Text("255 ETH",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),],),),
                Padding(
                  padding: const EdgeInsets.only(top: 340.0),
                  child: Row(
                    children:const [
                      Padding(
                        padding: EdgeInsets.only(left: 40,right: 1),
                        child: Text("ArtWorks",style: TextStyle(fontSize: 15,),),
                      ),
                      Padding(
                      padding: EdgeInsets.only(left: 35,right: 0),
                      child:
                      Text("Auctions",style: TextStyle(fontSize: 15,),),),
                      Padding(
                      padding: EdgeInsets.only(left: 56,right: 0),
                      child:
                      Text("Earning",style: TextStyle(fontSize: 15,)
                        ,)
                        ,)]
                    ,)
                  ,)
              ]),
         SizedBox(height: 10),
         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           Text("My Work",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: CupertinoColors.black),),
           Text(" Liked",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: CupertinoColors.black),)

         ],)



             ])
    );

  }
}







//