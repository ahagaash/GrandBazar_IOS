import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Column(
            children: [
              Expanded(
                child: IconButton(
                  icon: const Icon(IconlyBroken.arrowLeft2,
                      color: Color.fromARGB(214, 255, 174, 0)),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              // Expanded(
              //   child: const Text(
              //     'Back',
              //     style: TextStyle(
              //         color: Color.fromARGB(214, 255, 174, 0), fontSize: 18.0),
              //   ),
              // )
            ],
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(IconlyBroken.editSquare, color: Colors.black),
                          SizedBox(width: 30.0),
                          Expanded(
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 17.0,
                                  letterSpacing: 1.0),
                            ),
                          ),
                          // SizedBox(width: 150.0),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(IconlyBroken.arrowRight2,
                                  color: Colors.black))
                        ],
                      ),
                      Divider(height: 50.0, color: Colors.grey[600]),
                      Row(
                        children: const [
                          Icon(IconlyBroken.lock, color: Colors.black),
                          SizedBox(width: 30.0),
                          Expanded(
                            child: Text(
                              'Reset Password',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 17.0,
                                  letterSpacing: 1.0),
                            ),
                          ),
                          // SizedBox(width: 110.0),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(IconlyBroken.arrowRight2,
                                  color: Colors.black))
                        ],
                      ),
                      Divider(height: 50.0, color: Colors.grey[600]),
                      Row(
                        children: const [
                          Icon(IconlyBroken.notification, color: Colors.black),
                          SizedBox(width: 30.0),
                          Expanded(
                            child: Text(
                              'Notification Setting',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 17.0,
                                  letterSpacing: 1.0),
                            ),
                          ),
                          // SizedBox(width: 80.0),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(IconlyBroken.arrowRight2,
                                  color: Colors.black))
                        ],
                      ),
                      Divider(height: 50.0, color: Colors.grey[600]),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
