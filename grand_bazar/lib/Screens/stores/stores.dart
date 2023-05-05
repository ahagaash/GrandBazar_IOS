import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StoreScreen extends StatefulWidget {
  StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //login function
    void signIn(String mobile, String password) {
      if (_formKey.currentState!.validate()) {}
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Maxcell Mobiles ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Expanded(
                        child: Text(
                          'Swiss Garden',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: const Text(
                  'KFC (abbreviation of Kentucky Fried Chicken) is a',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/stores/store3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Maxcell Mobiles ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Expanded(
                        child: Text(
                          'Swiss Garden',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: const Text(
                  'KFC (abbreviation of Kentucky Fried Chicken) is a',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/stores/store1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Maxcell Mobiles ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Expanded(
                        child: Text(
                          'Swiss Garden',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: const Text(
                  'KFC (abbreviation of Kentucky Fried Chicken) is a',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/stores/store3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Maxcell Mobiles ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Expanded(
                        child: Text(
                          'Swiss Garden',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: const Text(
                  'KFC (abbreviation of Kentucky Fried Chicken) is a',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/stores/store2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Maxcell Mobiles ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Expanded(
                        child: Text(
                          'Swiss Garden',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: const Text(
                  'KFC (abbreviation of Kentucky Fried Chicken) is a',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/stores/store1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
          ],
        )));
  }
}