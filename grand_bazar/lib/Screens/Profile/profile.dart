import 'package:flutter/material.dart';
import 'package:grand_bazar/Screens/Login/login.dart';
import 'package:grand_bazar/Screens/Profile/profileCardComponent.dart';
import 'package:grand_bazar/Screens/Profile/profileUpperComponent.dart';
import 'package:grand_bazar/Util/ApiUtils/sessionManager/userSession.dart';
import 'package:grand_bazar/Util/constants/colourConstants.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key, required this.session}) : super(key: key);

  UserSession session;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //sign up button
    final signOutButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 255, 188, 4),
        child: MaterialButton(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          minWidth: 180,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          child: const Text(
            'SIGN OUT',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));

    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const ProfileUpperComponent(),
              ProfileCardComponent(userSession: widget.session),
              Padding(
                padding:
                    const EdgeInsets.only(top: 400.0, left: 20.0, right: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person_rounded, color: Colors.black),
                          SizedBox(width: 20.0),
                          Text(
                            widget.session.customer.fullName,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15.0,
                                letterSpacing: 1.0),
                          )
                        ],
                      ),
                      Divider(height: 50.0, color: Colors.grey[600]),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.black),
                          SizedBox(width: 20.0),
                          Text(
                            widget.session.customer.areaId.toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15.0,
                                letterSpacing: 1.0),
                          )
                        ],
                      ),
                      Divider(height: 50.0, color: Colors.grey[600]),
                      Row(
                        children: [
                          Icon(Icons.mobile_friendly_sharp,
                              color: Colors.black),
                          SizedBox(width: 20.0),
                          Text(
                            widget.session.customer.phone,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15.0,
                                letterSpacing: 1.0),
                          )
                        ],
                      ),
                      Divider(height: 50.0, color: Colors.grey[600]),
                      Row(
                        children: [
                          Icon(Icons.email_outlined, color: Colors.black),
                          SizedBox(width: 20.0),
                          Text(
                            widget.session.customer.email,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15.0,
                                letterSpacing: 1.0),
                          )
                        ],
                      ),
                      Divider(height: 50.0, color: Colors.grey[600]),
                      Center(child: signOutButton),
                      const SizedBox(
                        height: 10.0,
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
