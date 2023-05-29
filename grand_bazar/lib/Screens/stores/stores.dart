import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../Util/ApiUtils/model/storeModel.dart';
import '../../Util/ApiUtils/services/storeService.dart';

class StoreScreen extends StatefulWidget {
  StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  List<StoreModel>? stores;

  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getStore();
    // fetchUsers();
  }

  getStore() async {
    print("inside frontend ---------------------7777777777777");
    stores = await StoreService().getStores();
    if (stores != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Visibility(
          visible: isLoaded,
          child: ListView.builder(
            itemCount: stores?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Row(
                    children: <Widget>[
                      Text(
                        stores![index].name,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Expanded(
                        child: Text(
                          stores![index].city.name,
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
                  'KFC 11 (abbreviation of Kentucky Fried Chicken) is a',
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
              );
            },
          ),
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
