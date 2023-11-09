import 'package:Species/modules/dataModule.dart';
import 'package:Species/page/ItemList.dart';
import 'package:Species/widgets/sliverappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../page/ListView products.dart';
import '../page/ProfileModel.dart';
import '../page/firstScreen.dart';
import '../page/secondPage.dart';
class  BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);
  @override
  State<BottomNavbar> createState()=>_BottomNavbarState();
}
class _BottomNavbarState extends State<BottomNavbar> {
  @override
  int _selectedIndex = 0;

  void _onItemTapped(int index,) {setState((){_selectedIndex = index;});}
  final List<Widget> _screens = [
    FirstScreen(),
    HomePage(),
    profile_screen(),
     Products()
   ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28, bottom: 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            decoration:const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 20.0,
              //enableFeedback: true,
              showSelectedLabels: false,
              selectedItemColor: Colors.black,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              type: BottomNavigationBarType.fixed,
            //  backgroundColor: Colors.white60,
              items: const [
                BottomNavigationBarItem(
                    tooltip: "home", label: "", icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    tooltip: "dashboard",
                    label: "",
                    icon: Icon(Icons.dashboard_customize_outlined)),
                BottomNavigationBarItem(
                    tooltip: "cart icon",
                    label: "",
                    icon: Icon(Icons.person_add_alt_outlined)),
                BottomNavigationBarItem(
                    tooltip: "Tokri icon",
                    label: "",
                    icon: Icon(Icons.shopping_cart_outlined)),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: _screens[_selectedIndex],
      ),
    );
  }
}
// }
