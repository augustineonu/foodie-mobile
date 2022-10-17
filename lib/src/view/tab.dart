import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_app/src/view/checkout_page.dart';
import 'package:foode_app/src/view/homepage.dart';
import 'package:foode_app/src/view/order.dart';
import 'package:foode_app/src/view/profile.dart';

class Tabs extends StatefulWidget {
  static const String id = "tab";

  const Tabs({Key? key}) : super(key: key);

  

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

   int selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    final List<Widget> _widgetOptions = <Widget>[
      const Homepage(),
      const Order(),
      const CheckoutPage(),
      const Profile()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBAF02),
        body: _widgetOptions.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
           BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                "assets/images/shop.png",
              ),
              size: 25.h,
              //color: Color(0xff080040),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                "assets/images/receipt_list.png",
              ),
              size: 25.h,
              //color: const Color(0xff6A6A6A),
            ),
            label: 'My order',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                "assets/images/heart.png",
              ),
              size: 25.h,
              //color: const Color(0xff6A6A6A),
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                "assets/images/profile.png",
              ),
              size: 25.h,
              //color: const Color(0xff6A6A6A),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: const Color(0xff080040),
        unselectedItemColor: const Color(0xff6A6A6A),
        onTap: _onItemTapped,
      ),);
  }
}

