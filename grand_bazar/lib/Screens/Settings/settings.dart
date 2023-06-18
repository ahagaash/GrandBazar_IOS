import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grand_bazar/Screens/EditProfile/editprofile.dart';

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
                        children: [
                          const Icon(IconlyBroken.editSquare,
                              color: Colors.black),
                          const SizedBox(width: 30.0),
                          Expanded(
                            child: InkWell(
                              child: const Text(
                                'Edit Profile',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 17.0,
                                    letterSpacing: 1.0),
                              ),
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EditProfileScreen()),
                              ),
                            ),
                          ),
                          // SizedBox(width: 150.0),
                          InkWell(
                            child: const Align(
                                alignment: Alignment.centerRight,
                                child: Icon(IconlyBroken.arrowRight2,
                                    color: Colors.black)),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EditProfileScreen()),
                            ),
                          )
                        ],
                      ),
                      Divider(height: 50.0, color: Colors.grey[600]),
                      Row(
                        children: [
                          const Icon(IconlyBroken.lock, color: Colors.black),
                          const SizedBox(width: 30.0),
                          Expanded(
                            child: InkWell(
                                child: const Text(
                                  'Reset Password',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17.0,
                                      letterSpacing: 1.0),
                                ),
                                onTap: () => openDialog()),
                          ),
                          // SizedBox(width: 110.0),
                          InkWell(
                            child: const Align(
                                alignment: Alignment.centerRight,
                                child: Icon(IconlyBroken.arrowRight2,
                                    color: Colors.black)),
                            onTap: () => openDialog(),
                          )
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

  //Reset Password Modal
  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Reset Password'),
            content: const TextField(
                autofocus: true,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Password",
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(10))
                )),
            actions: [
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: const Text('Submit'),
                onPressed: () {},
              ),
            ],
          ));
}
