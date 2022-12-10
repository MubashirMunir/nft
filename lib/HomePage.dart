import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'notification.dart';
class HomePage extends StatefulWidget {
State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends  State<HomePage>{
Widget build(BuildContext context){
  return Scaffold(
    appBar: PreferredSize(preferredSize: Size.fromHeight(80),
      child: AppBar(actions: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: IconButton(tooltip: "Notification Screen",
            onPressed: (){showAlertDialog(context);},
            icon:const Icon(Icons.notifications_none,color: Colors.black),),
        )],
        title: Padding(padding:  EdgeInsets.only(top: 34.0,left: 20),
        child: Text("nftApp",style: TextStyle(color: Colors.black))),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,),
      backgroundColor: Colors.white,elevation: 0)),

    // appBar: AppBar(elevation: 0,
    //     title: const Text("nftApp",style: TextStyle(color: Colors.black),),
    //     backgroundColor: CupertinoColors.white,
    //     actions:const [ Icon(Icons.notifications_active_outlined,color: Colors.black,),]),
      backgroundColor:CupertinoColors.white,
      body:
      SingleChildScrollView(
        child: Column(
            children:[
              // Container(margin: const EdgeInsets.only(top: 0),
              //   child: Row(
              //     children: const [
              //       Padding(
              //         padding: EdgeInsets.only(left: 50),
              //         child: Text("nftApp",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(left: 196.0),
              //         child: Icon(Icons.notification_add_outlined),
              //       ),
              //     ],),),
              Material(elevation:4,
                borderRadius: BorderRadius.circular(20.0),
                child: const SizedBox(
                  height: 46.0,
                  width: 280,
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none,
                        icon: Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Icon(Icons.search)),
                        hintText: "Search Here",hintStyle: TextStyle(color:Colors.black54,letterSpacing: .2,)
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                  padding: EdgeInsets.only(right: 245),
                  child: Text("0 Results",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),
              const SizedBox(height: 110,),
              const Divider(
                  color: Colors.black38,
                  height: 25,
                  thickness:.4,
                  indent: 25,
                  endIndent: 25
              ),
              const Padding(
                padding: EdgeInsets.only(right: 215,bottom: 10),
                child: Text("Recommended",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),),
              //Row is starts from here
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Card(elevation: 1,
                      child: ClipRRect(
                          borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight:  Radius.circular(10),
                              bottomRight: Radius.circular(0),
                              bottomLeft:  Radius.circular(0)),
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration:const BoxDecoration(color: Colors.white,
                                boxShadow: [BoxShadow(offset:Offset(1,1),color: Colors.black,
                                    blurRadius: 4)
                                ]),
                            child: Column(children: [
                              Image.asset("assets/images/pic1.jpg"),
                              const Padding(
                                padding:  EdgeInsets.only(left: 45,top: 10),
                                child:Text("The Unknown",style: TextStyle(fontWeight: FontWeight.bold),),),
                              Row(children:const [
                                SizedBox(
                                  height:20,
                                  width: 20,
                                  child:CircleAvatar(backgroundImage: AssetImage("assets/images/pic1.jpg"),),),
                                Padding(
                                  padding: EdgeInsets.only(left: 47.0),
                                  child: Text("imjackrider",style: TextStyle(fontSize: 10),),),],)],),)),
                    ),
                    const SizedBox(width: 20),
                    Card(
                      child: ClipRRect(
                          borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight:  Radius.circular(10),
                              bottomRight: Radius.circular(0),
                              bottomLeft:  Radius.circular(0)),
                          child: Container(
                              height: 170,
                              width: 150,
                              decoration:const BoxDecoration(color: Colors.white,
                                  boxShadow: [BoxShadow(offset:Offset(1,1),color: Colors.black,
                                      blurRadius: 4)]),
                              child: Column(children: [
                                Image.asset("assets/images/pic1.jpg"),
                                const Padding(
                                  padding:  EdgeInsets.only(left: 45,top: 10),
                                  child:Text("The Unknown",style: TextStyle(fontWeight: FontWeight.bold),),),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    SizedBox(
                                      height:30,
                                      width: 30,
                                      child:Padding(
                                        padding: EdgeInsets.only(bottom: 13),
                                        child: CircleAvatar(backgroundImage: AssetImage("assets/images/pic1.jpg"),),
                                      ),),
                                    Padding(
                                        padding: EdgeInsets.only(left: 47.0),
                                        child: Text("imjackrider",style: TextStyle(fontSize: 10),
                                        )
                                    ),
                                  ],)
                              ],)
                          )
                      ),
                    )
                  ]),

              const SizedBox(height: 5,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Card(elevation: 1,

                      child: ClipRRect(
                          borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight:  Radius.circular(10),
                              bottomRight: Radius.circular(0),
                              bottomLeft:  Radius.circular(0)),
                          child: Container(
                              height: 170,
                              width: 150,
                              decoration:const BoxDecoration(color: Colors.white,
                                  boxShadow: [BoxShadow(offset:Offset(1,1),color: Colors.black,
                                      blurRadius: 4)]),
                              child: Column(children: [
                                Image.asset("assets/images/pic.jpg"),
                                const Padding(
                                  padding:  EdgeInsets.only(left: 45,top: 10),
                                  child:Text("The Unknown",style: TextStyle(fontWeight: FontWeight.bold),),),
                                Row(children: const [
                                  SizedBox(
                                    height:30,
                                    width: 30,
                                    child:Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage("assets/images/pic1.jpg"),),
                                    ),),
                                  Padding(
                                      padding:  EdgeInsets.only(left: 47.0),
                                      child: Text("imjackrider",style: TextStyle(fontSize: 10),
                                      )
                                  )]
                                )]
                              )
                          )
                      ),
                    ),

                    const SizedBox(width: 20),

                    Card(
                      child: ClipRRect(
                          borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight:  Radius.circular(10),
                              bottomRight: Radius.circular(0),
                              bottomLeft:  Radius.circular(0)),
                          child: Container(
                              height: 170,
                              width: 150,
                              decoration:const BoxDecoration(color: Colors.white,
                                  boxShadow: [BoxShadow(offset:Offset(1,1),color: Colors.black,
                                      blurRadius: 4)]),
                              child: Column(children: [
                                Image.asset("assets/images/jhz.jpg"),
                                const Padding(
                                  padding:  EdgeInsets.only(left: 45,top: 10),
                                  child:Text("The Unknown",style: TextStyle(fontWeight: FontWeight.bold),),),
                                Row(children: const [
                                  SizedBox(
                                    height:20,
                                    width: 20,
                                    child:CircleAvatar(backgroundImage: AssetImage("assets/images/jhz.jpg"),),),
                                  Padding(
                                      padding: EdgeInsets.only(left: 47.0),
                                      child: Text("imjackrider",style: TextStyle(fontSize: 10)
                                      )
                                  )]
                                )]
                              )
                          )
                      ),
                    ),
                  ])
            ]),
      ));

  }
}