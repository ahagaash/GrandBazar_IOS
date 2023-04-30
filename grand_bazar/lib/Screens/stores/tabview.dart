import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'FirstScreen.dart';
import 'SecondScreen.dart';

class TabScreen extends StatefulWidget {
  TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //login function
    void signIn(String mobile, String password) {
      if (_formKey.currentState!.validate()) {}
    }

  return MaterialApp(  
      home: DefaultTabController(  
        length: 2,  
        child: Scaffold(  
          appBar: AppBar(  
            backgroundColor: Colors.white,
            title: const Text('Stores',style: TextStyle(color: Colors.black),),  
            bottom: const TabBar( 
               indicatorColor: Colors.orange, 
                indicatorWeight: 5,   
              tabs: [  
                Tab( child: Text("FOLLOWING",),),  
                  Tab( child: Text("ALL STORES",),),  
               
              ],  
              labelColor: Colors.orange,
            ),  
          ),  
          body: TabBarView(  
            children: [  
              FirstScreen(),  
              SecondScreen(),  
            ],  
          ),  
        ),  
      ),  
    );  
  }
}

