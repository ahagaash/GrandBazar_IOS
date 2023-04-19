import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BOTTOM NAVIGATION BAR
      bottomNavigationBar: GNav(
          // rippleColor: Colors.grey, // tab button ripple color when pressed
          // hoverColor: Colors.grey, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          // tabActiveBorder:
          //     Border.all(color: Colors.black, width: 1), // tab button border
          // tabBorder:
          //     Border.all(color: Colors.grey, width: 1), // tab button border
          // tabShadow: [
          //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
          // ], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          onTabChange: (value) => {
                {print(value)}
              },
          color: Colors.black, // unselected icon color
          activeColor:
              Color.fromARGB(255, 232, 191, 9), // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: Color.fromARGB(255, 238, 176, 6)
              .withOpacity(0.3), // selected tab background color
          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 15), // navigation bar padding
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.local_offer_sharp,
              text: 'Offers',
            ),
            GButton(
              icon: Icons.newspaper,
              text: 'News',
            ),
            GButton(
              icon: Icons.shop_two_sharp,
              text: 'Shops',
            ),
            GButton(
              icon: Icons.supervised_user_circle_sharp,
              text: 'Profile',
            )
          ]),
    );
  }
}
