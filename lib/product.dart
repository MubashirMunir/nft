import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'notification.dart';
class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
        appBar: PreferredSize(preferredSize: Size.fromHeight(80),
        child: AppBar(
            actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: IconButton(onPressed: (){showAlertDialog(context);},
              icon: const Icon(Icons.notifications_none,color: Colors.black,),
              ),
          )],
            title: const Padding(padding: EdgeInsets.only(top: 30.0,left: 20),
                child: Text("nftApp",style: TextStyle(color: Colors.black))),
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,),
            backgroundColor: Colors.white,
            elevation: 0)),
        body: Padding(
 padding: const EdgeInsets.only(
   left: 11,
   right: 5,
      ),
 child: Column(
   children: [
     Stack(
         clipBehavior: Clip.none,
         children: [
   ClipRRect(
   borderRadius: const BorderRadius.all(Radius.circular(10)),
   child: SizedBox(
    height: 175,
  width: 150,
  child: Image.asset("assets/images/pic.jpg",fit:BoxFit.fill))),
   Positioned(
       top: 13,
  left: 150,
  child: ClipRRect(
    borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
      child: Container(
    color: Colors.black12,
        height: 150,
        width: 190,
    child: Stack(children: [
    const  Positioned(
         left: 25,
          top: 30,
        child: Text("Unknown",style: TextStyle(fontSize: 17))
        ),
            Padding(
        padding: const EdgeInsets.only(
          left: 20,
        top:60 ,),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
     child:Container(
         decoration: BoxDecoration(gradient: LinearGradient(end: Alignment.topRight,begin: Alignment.topLeft,
           colors:[
             CupertinoColors.systemPurple,
             Colors.deepPurpleAccent,
           ]
         )),
        height: 12,
         width: 39,
          alignment: Alignment.center,
        child: Text("ETC2.01",style: (TextStyle(fontSize: 9,letterSpacing: 0,color: Colors.white,wordSpacing: 0)),),))),
     Stack(clipBehavior: Clip.none,
          children: [
         Positioned(left: 60,
              top: 60,
         child:ClipRRect( borderRadius: BorderRadius.circular(25),
          child:Container(color: Colors.black38,
           height: 12,
          width: 65,
           child: const Padding(
          padding: EdgeInsets.only(right: 53),
          child: CircleAvatar(
          backgroundImage:AssetImage("assets/images/me1.jpg"),
            ),
                  ),
                            ),
                                  )
                              ),
         const Padding(
         padding: EdgeInsets.only(left: 74,
         top: 61),
        child: Text("imMubashir",style:TextStyle(color: Colors.white,fontSize:9))),
           Positioned(left: 30,
           top: 90,
           child: Column(
           children: [
            Text("Top Bid is By You",style:TextStyle(color: Colors.black,fontSize:10)),
           SizedBox(height: 20),
             Text("Time Remaining",style: TextStyle(fontSize: 10),),
            ClipRRect(borderRadius: BorderRadius.circular(25),
            child:Container(
            color: Colors.black12,
             height: 15,
           width: 70,
          child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
           children:const [
         Icon(size:10,textDirection: TextDirection.ltr,
        Icons.access_time_sharp,color: Colors.deepOrangeAccent,),
     Text("00:02:30",style: (TextStyle(fontSize:9,color:Colors.deepOrangeAccent,))),
             ]),
              )
           )
        ]),
 )
])
 ]),
     ),
      )


      ),
       ]),
     SizedBox(height: 10,),
     Stack(
         clipBehavior: Clip.none,
         children: [
           ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(10)),
               child: SizedBox(
                   height: 175,
                   width: 150,
                   child: Image.asset("assets/images/pic.jpg",fit:BoxFit.fill))),
           Positioned(top: 13,
             left: 150,
             child:ClipRRect(
                 borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                 child:Container(
                   color: Colors.black12,
                   height: 150,
                   width: 190,
                   child: Stack(children: [
                     const  Positioned(
                         left: 25,
                         top: 30,
                         child: Text("Unknown",style: TextStyle(fontSize: 17))
                     ),
                     Padding(
                         padding: const EdgeInsets.only(
                           left: 20,
                           top:60 ,),
                         child: ClipRRect(
                             borderRadius: BorderRadius.circular(25),
                             child:Container( decoration: BoxDecoration(gradient: LinearGradient(end: Alignment.topRight,begin: Alignment.topLeft,
                                 colors:[
                                   CupertinoColors.systemPurple,
                                   Colors.deepPurpleAccent,
                                 ]
                             )),
                               height: 12,
                               width: 39,
                               alignment: Alignment.center,
                               child: Text("ETC2.01",style: (TextStyle(fontSize: 9,letterSpacing: 0,color: Colors.white,wordSpacing: 0)),),))),
                     Stack(clipBehavior: Clip.none,
                         children: [
                           Positioned(left: 60,
                               top: 60,
                               child:ClipRRect( borderRadius: BorderRadius.circular(25),
                                 child:Container(color: Colors.black38,
                                   height: 12,
                                   width: 65,
                                   child: const Padding(
                                     padding: EdgeInsets.only(right: 53),
                                     child: CircleAvatar(
                                       backgroundImage:AssetImage("assets/images/me1.jpg"),
                                     ),
                                   ),
                                 ),
                               )
                           ),
                           const Padding(
                               padding: EdgeInsets.only(left: 74,
                                   top: 61),
                               child: Text("imMubashir",style:TextStyle(color: Colors.white,fontSize:9))),
                           Positioned(left: 30,
                             top: 90,
                             child: Column(
                                 children: [
                                   Text("Top Bid is By You",style:TextStyle(color: Colors.black,fontSize:10)),
                                   SizedBox(height: 20),
                                   Text("Time Remaining",style: TextStyle(fontSize: 10),),
                                   ClipRRect(borderRadius: BorderRadius.circular(25),
                                       child:Container(
                                         color: Colors.black12,
                                         height: 15,
                                         width: 70,
                                         child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                             children:const [
                                               Icon(size:10,textDirection: TextDirection.ltr,
                                                 Icons.access_time_sharp,color: Colors.deepOrangeAccent,),
                                               Text("00:02:30",style: (TextStyle(fontSize:9,color:Colors.deepOrangeAccent,))),
                                             ]),
                                       )
                                   )
                                 ]),
                           )
                         ])
                   ]),
                 )
             ),
           ),
         ]),
SizedBox(height: 10,),

     Stack(
       clipBehavior: Clip.none,
      children: [
       ClipRRect(
           borderRadius: BorderRadius.all(Radius.circular(10)),
          child: SizedBox(
            height: 175,
         width: 150,
       child: Image.asset("assets/images/pic.jpg",fit:BoxFit.fill))),
        Positioned(top: 13,
      left: 150,
       child:ClipRRect(
      borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
           child:Container(
        color: Colors.black12,
       height: 150,
      width: 190,
        child: Stack(children: [
       const  Positioned(
        left: 25,
       top: 30,
        child: Text("Unknown",style: TextStyle(fontSize: 17))
       ),
         Padding(
      padding: const EdgeInsets.only(
       left: 20,
               top:60 ,),
child: ClipRRect( borderRadius: BorderRadius.circular(25),
       child:Container( decoration: BoxDecoration(gradient: LinearGradient(end: Alignment.topRight,begin: Alignment.topLeft,
           colors:[
             CupertinoColors.systemPurple,
             Colors.deepPurpleAccent,
           ]
       )),
      height: 12,
      width: 39,
      alignment: Alignment.center,
     child: Text("ETC2.01",style: (TextStyle(fontSize: 9,letterSpacing: 0,color: Colors.white,wordSpacing: 0)),),))),
     Stack(clipBehavior: Clip.none,
     children: [
     Positioned(left: 60,
      top: 60,
      child:ClipRRect( borderRadius: BorderRadius.circular(25),
         child:Container(
           color: Colors.black38,
      height: 12,
        width: 65,
     child: const Padding(
      padding: EdgeInsets.only(right: 53),
      child: CircleAvatar(
     backgroundImage:AssetImage("assets/images/me1.jpg"),
      ),
),
     ),
     )
      ),
           const Padding(
               padding: EdgeInsets.only(left: 74,
               top: 61),
               child: Text("imMubashir",style:TextStyle(color: Colors.white,fontSize:9))),
               Positioned(left: 30,
              top: 90,
              child: Column(
               children: [
               Text("Top Bid is By You",style:TextStyle(color: Colors.black,fontSize:10)),
             SizedBox(height: 20),
                 Text("Time Remaining",style: TextStyle(fontSize: 10),),

                 ClipRRect(borderRadius: BorderRadius.circular(25),
             child:Container(
              color: Colors.black12,
              height: 15,
              width: 70,
              child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  // Text("Time Remaining",style: TextStyle(fontSize: 10),),
                 Icon(size:10,textDirection: TextDirection.ltr,
                   Icons.access_time_sharp,color: Colors.deepOrangeAccent,),
                  Text("00:02:30",style: (TextStyle(fontSize:9,color:Colors.deepOrangeAccent,))),
              ]),
              )
             ),

               ]),
              )
             ])
              ]),
              )
       ),
             ),
              ]),

   ]),
         )
    );
  }
}

