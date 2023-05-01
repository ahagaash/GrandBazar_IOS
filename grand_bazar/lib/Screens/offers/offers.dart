import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OfferScreen extends StatefulWidget {
  OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //login function

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Offers',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'iPhone 12',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        'Maxcell Mobiles',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Rs 199.99',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Expanded(
                      child: Text(
                        'jun 22,2021',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                leading: Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/stores/store3.jpg'),
                      fit: BoxFit.fitHeight,
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
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'iPhone 12',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        'Maxcell Mobiles',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Rs 199.99',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Expanded(
                      child: Text(
                        'jun 22,2021',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                leading: Container(
                  width: 80,
                  height: 100,
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
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'iPhone 12',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        'Maxcell Mobiles',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Rs 199.99',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Expanded(
                      child: Text(
                        'jun 22,2021',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                leading: Container(
                  width: 80,
                  height: 100,
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
          ],
        )));
  }
}
