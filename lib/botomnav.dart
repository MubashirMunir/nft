import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft/newScreen.dart';
import 'package:nft/practieModule.dart';
import 'package:nft/prodeuctDetails.dart';
import 'package:nft/product.dart';
import 'package:nft/HomePage.dart';
class bottomnavbar extends StatefulWidget {
  const bottomnavbar({Key? key}) : super(key: key);
  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}
class _bottomnavbarState extends State<bottomnavbar> {
  @override
  int _selectedIndex=0;
  void _onItemTapped(int index){setState((){_selectedIndex=index;});}
  List<Widget> _screens=[HomePage(),Products(),productdetails(),newScreeen(),practiceModule()];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      bottomNavigationBar: Padding(padding: const EdgeInsets.only(left: 28,right: 28,bottom:2),
        child: ClipRRect(borderRadius: BorderRadius.circular(25),
          child: BottomNavigationBar(enableFeedback: true,
          showSelectedLabels: false,
          selectedItemColor: Colors.black,
          selectedLabelStyle:TextStyle(color:Colors.cyan) ,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white70,
          items:const [BottomNavigationBarItem(
                tooltip: "home",
                label: "",
                icon: Icon(Icons.home)),
                       BottomNavigationBarItem(
                tooltip: "dashboard",
                label: "",
                           icon: Icon(Icons.dashboard_customize_outlined)),
                       BottomNavigationBarItem(
                tooltip: "cart icon",
                label: "",
                           icon: Icon(Icons.person_add_alt_outlined)),
                       BottomNavigationBarItem(
                tooltip: "cart icon",
                label: "",
                           icon: Icon(Icons.shopping_cart_outlined)),
            BottomNavigationBarItem(
                tooltip: "cart icon",
                label: "",
                icon: Icon(Icons.shopping_cart_outlined)),
          ],),
        ),
      ),
      body: Center(child: _screens[_selectedIndex],),
    );
  }
}
// }