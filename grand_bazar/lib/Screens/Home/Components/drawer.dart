import 'package:flutter/material.dart';
import 'package:grand_bazar/Util/constants/colourConstants.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class DrawerNavigationBar extends StatelessWidget {
  const DrawerNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,

        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: <Widget>[
              ProfilePicture(
                name: 'Fazlan Mohamed',
                radius: 50,
                fontsize: 20,
              ),
              Spacer(
                flex: 2, //
              ),
              Text("Fazlan Mohamed"),
              Text("Madawala"),
              // Divider(
              //   color: Colors.black,
              //   thickness: 1.5,
              // )
            ]),
            // child: ProfilePicture(
            //   name: 'Fazlan Mohamed',
            //   radius: 15,
            //   fontsize: 15,
            // ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(IconlyBroken.paper),
            title: const Text('Bazar News'),
            tileColor: kPrimaryColor,
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(IconlyBroken.plus),
            title: const Text('Doctors'),
            iconColor: kPrimaryColor,
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
