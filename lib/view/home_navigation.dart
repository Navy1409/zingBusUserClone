import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:zing_bus_clone/utils/constant/dimensions.dart';
import 'package:zing_bus_clone/view/constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int currentIndex=0;
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {

    // Todo: Add this code to every page ⤵️⤵️⤵️⤵️⤵️
    double widthP = Dimensions.myWidthThis(context);
    double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    // Todo: Add this code to every page ⤴️⤴️⤴️⤴️⤴️


    return Scaffold(
      body: Center(
        child: widgetlist[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
          selectedFontSize: 18,
          unselectedFontSize: 12,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          fixedColor: Colors.purpleAccent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: Colors.grey,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home_work,
                color: Colors.purpleAccent,
              ),
              // label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.checklist_outlined,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.check_box,
                color: Colors.purpleAccent,
              ),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.live_help,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.message_rounded,
                color: Colors.purpleAccent,
              ),
              label: 'Help',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.account_circle_rounded,
                color: Colors.purpleAccent,
              ),
              label: 'My Account',
            ),
          ]),
    );
  }
}
